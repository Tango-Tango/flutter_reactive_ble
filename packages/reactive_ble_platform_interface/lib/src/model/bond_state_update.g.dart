// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_state_update.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $BondStateUpdate {
  const $BondStateUpdate();

  String get deviceId;
  DeviceBondState get bondState;

  BondStateUpdate copyWith({
    String? deviceId,
    DeviceBondState? bondState,
  }) =>
      BondStateUpdate(
        deviceId: deviceId ?? this.deviceId,
        bondState: bondState ?? this.bondState,
      );

  BondStateUpdate copyUsing(
      void Function(BondStateUpdate$Change change) mutator) {
    final change = BondStateUpdate$Change._(
      this.deviceId,
      this.bondState,
    );
    mutator(change);
    return BondStateUpdate(
      deviceId: change.deviceId,
      bondState: change.bondState,
    );
  }

  @override
  String toString() =>
      "BondStateUpdate(deviceId: $deviceId, bondState: $bondState)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is BondStateUpdate &&
      other.runtimeType == runtimeType &&
      deviceId == other.deviceId &&
      bondState == other.bondState;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + deviceId.hashCode;
    result = 37 * result + bondState.hashCode;
    return result;
  }
}

class BondStateUpdate$Change {
  BondStateUpdate$Change._(
    this.deviceId,
    this.bondState,
  );

  String deviceId;
  DeviceBondState bondState;
}

// ignore: avoid_classes_with_only_static_members
class BondStateUpdate$ {
  static final deviceId = Lens<BondStateUpdate, String>(
    (deviceIdContainer) => deviceIdContainer.deviceId,
    (deviceIdContainer, deviceId) =>
        deviceIdContainer.copyWith(deviceId: deviceId),
  );

  static final bondState = Lens<BondStateUpdate, DeviceBondState>(
    (bondStateContainer) => bondStateContainer.bondState,
    (bondStateContainer, bondState) =>
        bondStateContainer.copyWith(bondState: bondState),
  );
}
