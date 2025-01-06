import 'package:functional_data/functional_data.dart';
import 'package:meta/meta.dart';

part 'bond_state_update.g.dart';
//ignore_for_file: annotate_overrides

///Status update for a specific BLE device.
@immutable
@FunctionalData()
class BondStateUpdate extends $BondStateUpdate {
  final String deviceId;
  final DeviceBondState connectionState;

  const BondStateUpdate({
    required this.deviceId,
    required this.connectionState,
  });
}

/// Connection status.
enum DeviceBondState {
  /// Device is not bonded.
  none,

  /// Device bonding is in progress.
  bonding,

  /// Device is bonded.
  bonded,

  /// Bond state is not (yet) determined.
  unknown,
}
