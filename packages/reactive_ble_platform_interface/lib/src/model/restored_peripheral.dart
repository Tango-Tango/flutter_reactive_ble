import 'package:collection/collection.dart';
import 'package:functional_data/functional_data.dart';
import 'package:meta/meta.dart';

import '../../reactive_ble_platform_interface.dart';

part 'restored_peripheral.g.dart';

// ignore_for_file: annotate_overrides, avoid_classes_with_only_static_members, non_constant_identifier_names

///Ble device that is restored on initialization.
@immutable
@FunctionalData()
class RestoredPeripheral extends $RestoredPeripheral {
  final String id;
  final String name;

  @CustomEquality(DeepCollectionEquality())
  final List<QualifiedCharacteristic> subscriptions;

  const RestoredPeripheral({
    required this.id,
    required this.name,
    required this.subscriptions,
  });
}
