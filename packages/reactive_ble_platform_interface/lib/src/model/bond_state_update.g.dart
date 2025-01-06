// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_state_update.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $BondStateUpdate {
  const $BondStateUpdate();

  String get deviceId;
  DeviceBondState get connectionState;

  BondStateUpdate copyWith({
    String? deviceId,
    DeviceBondState? connectionState,
  }) =>
      BondStateUpdate(
        deviceId: deviceId ?? this.deviceId,
        connectionState: connectionState ?? this.connectionState,
      );

  BondStateUpdate copyUsing(
      void Function(BondStateUpdate$Change change) mutator) {
    final change = BondStateUpdate$Change._(
      this.deviceId,
      this.connectionState,
    );
    mutator(change);
    return BondStateUpdate(
      deviceId: change.deviceId,
      connectionState: change.connectionState,
    );
  }

  @override
  String toString() =>
      "BondStateUpdate(deviceId: $deviceId, connectionState: $connectionState)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is BondStateUpdate &&
      other.runtimeType == runtimeType &&
      deviceId == other.deviceId &&
      connectionState == other.connectionState;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + deviceId.hashCode;
    result = 37 * result + connectionState.hashCode;
    return result;
  }
}

class BondStateUpdate$Change {
  BondStateUpdate$Change._(
    this.deviceId,
    this.connectionState,
  );

  String deviceId;
  DeviceBondState connectionState;
}

// ignore: avoid_classes_with_only_static_members
class BondStateUpdate$ {
  static final deviceId = Lens<BondStateUpdate, String>(
    (deviceIdContainer) => deviceIdContainer.deviceId,
    (deviceIdContainer, deviceId) =>
        deviceIdContainer.copyWith(deviceId: deviceId),
  );

  static final connectionState = Lens<BondStateUpdate, DeviceBondState>(
    (connectionStateContainer) => connectionStateContainer.connectionState,
    (connectionStateContainer, connectionState) =>
        connectionStateContainer.copyWith(connectionState: connectionState),
  );
}
