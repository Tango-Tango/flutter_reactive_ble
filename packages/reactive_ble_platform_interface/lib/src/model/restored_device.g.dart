// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restored_device.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $RestoredDevice {
  const $RestoredDevice();

  String get id;
  String get name;
  Map<QualifiedCharacteristic, Stream<List<int>>> get characteristicStreams;
  Stream<ConnectionStateUpdate> get connectionStream;

  RestoredDevice copyWith({
    String? id,
    String? name,
    Map<QualifiedCharacteristic, Stream<List<int>>>? characteristicStreams,
    Stream<ConnectionStateUpdate>? connectionStream,
  }) =>
      RestoredDevice(
        id: id ?? this.id,
        name: name ?? this.name,
        characteristicStreams:
            characteristicStreams ?? this.characteristicStreams,
        connectionStream: connectionStream ?? this.connectionStream,
      );

  RestoredDevice copyUsing(
      void Function(RestoredDevice$Change change) mutator) {
    final change = RestoredDevice$Change._(
      this.id,
      this.name,
      this.characteristicStreams,
      this.connectionStream,
    );
    mutator(change);
    return RestoredDevice(
      id: change.id,
      name: change.name,
      characteristicStreams: change.characteristicStreams,
      connectionStream: change.connectionStream,
    );
  }

  @override
  String toString() =>
      "RestoredDevice(id: $id, name: $name, characteristicStreams: $characteristicStreams, connectionStream: $connectionStream)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is RestoredDevice &&
      other.runtimeType == runtimeType &&
      id == other.id &&
      name == other.name &&
      const DeepCollectionEquality()
          .equals(characteristicStreams, other.characteristicStreams) &&
      connectionStream == other.connectionStream;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + id.hashCode;
    result = 37 * result + name.hashCode;
    result = 37 * result +
        const DeepCollectionEquality().hash(characteristicStreams);
    result = 37 * result + connectionStream.hashCode;
    return result;
  }
}

class RestoredDevice$Change {
  RestoredDevice$Change._(
    this.id,
    this.name,
    this.characteristicStreams,
    this.connectionStream,
  );

  String id;
  String name;
  Map<QualifiedCharacteristic, Stream<List<int>>> characteristicStreams;
  Stream<ConnectionStateUpdate> connectionStream;
}

// ignore: avoid_classes_with_only_static_members
class RestoredDevice$ {
  static final id = Lens<RestoredDevice, String>(
    (idContainer) => idContainer.id,
    (idContainer, id) => idContainer.copyWith(id: id),
  );

  static final name = Lens<RestoredDevice, String>(
    (nameContainer) => nameContainer.name,
    (nameContainer, name) => nameContainer.copyWith(name: name),
  );

  static final characteristicStreams =
      Lens<RestoredDevice, Map<QualifiedCharacteristic, Stream<List<int>>>>(
    (characteristicStreamsContainer) =>
        characteristicStreamsContainer.characteristicStreams,
    (characteristicStreamsContainer, characteristicStreams) =>
        characteristicStreamsContainer.copyWith(
            characteristicStreams: characteristicStreams),
  );

  static final connectionStream =
      Lens<RestoredDevice, Stream<ConnectionStateUpdate>>(
    (connectionStreamContainer) => connectionStreamContainer.connectionStream,
    (connectionStreamContainer, connectionStream) =>
        connectionStreamContainer.copyWith(connectionStream: connectionStream),
  );
}
