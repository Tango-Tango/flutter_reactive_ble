import 'package:collection/collection.dart';
import 'package:functional_data/functional_data.dart';
import 'package:meta/meta.dart';

import '../../reactive_ble_platform_interface.dart';

part 'restored_device.g.dart';

// ignore_for_file: annotate_overrides, avoid_classes_with_only_static_members, non_constant_identifier_names

///Ble device that is restored on initialization.
@immutable
@FunctionalData()
class RestoredDevice extends $RestoredDevice {
  final String id;
  final String name;

  @CustomEquality(DeepCollectionEquality())
  final Map<QualifiedCharacteristic, Stream<List<int>>> characteristicStreams;

  final Stream<ConnectionStateUpdate> connectionStream;

  const RestoredDevice({
    required this.id,
    required this.name,
    required this.characteristicStreams,
    required this.connectionStream,
  });
}
