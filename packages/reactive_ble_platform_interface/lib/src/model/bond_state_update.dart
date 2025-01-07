import 'package:functional_data/functional_data.dart';
import 'package:meta/meta.dart';

part 'bond_state_update.g.dart';
//ignore_for_file: annotate_overrides

///Status update for a specific BLE device.
@immutable
@FunctionalData()
class BondStateUpdate extends $BondStateUpdate {
  final String deviceId;
  final DeviceBondState bondState;

  const BondStateUpdate({
    required this.deviceId,
    required this.bondState,
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
