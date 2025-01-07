import CoreBluetooth.CBPeripheral

struct RestoredPeripheral: Equatable {
    let identifier: PeripheralID
    let name: String
    let subscriptions: [CharacteristicAddress]
    let status: RestorationStatus
}

extension RestoredPeripheral {

    init(_ peripheral: CBPeripheral) {
        var status: RestorationStatus = .restored
        if let services = peripheral.services, !services.isEmpty {
            for service in services {
                if service.characteristics == nil || service.characteristics!.isEmpty {
                    status = .pendingDiscovery
                    break
                }
            }
        } else {
            status = .pendingDiscovery
        }
        
        var subscriptions: [CharacteristicAddress]?
        if status == .restored, let services = peripheral.services {
            subscriptions = services.reduce([CharacteristicAddress](), { partialResult, service in
                guard let characteristics = service.characteristics
                else { return partialResult }

                let notifying: [CharacteristicAddress] = characteristics.compactMap({ characteristic in
                    guard characteristic.isNotifying
                    else { return nil }

                    return CharacteristicAddress.with {
                        $0.deviceID = peripheral.identifier.uuidString
                        $0.serviceUuid = Uuid.with { $0.data = service.uuid.data}
                        $0.characteristicUuid = Uuid.with { $0.data = characteristic.uuid.data }
                    }
                })

                return partialResult + notifying
            })
        }
        
        self.init(
            identifier: peripheral.identifier,
            name: peripheral.name ?? "",
            subscriptions: subscriptions ?? [CharacteristicAddress](),
            status: status
        )
    }
}

enum RestorationStatus {
    case pendingDiscovery
    case restored
}
