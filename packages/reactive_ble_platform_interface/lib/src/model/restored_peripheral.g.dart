// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restored_peripheral.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $RestoredPeripheral {
  const $RestoredPeripheral();

  String get id;
  String get name;
  List<QualifiedCharacteristic> get subscriptions;

  RestoredPeripheral copyWith({
    String? id,
    String? name,
    List<QualifiedCharacteristic>? subscriptions,
  }) =>
      RestoredPeripheral(
        id: id ?? this.id,
        name: name ?? this.name,
        subscriptions: subscriptions ?? this.subscriptions,
      );

  RestoredPeripheral copyUsing(
      void Function(RestoredPeripheral$Change change) mutator) {
    final change = RestoredPeripheral$Change._(
      this.id,
      this.name,
      this.subscriptions,
    );
    mutator(change);
    return RestoredPeripheral(
      id: change.id,
      name: change.name,
      subscriptions: change.subscriptions,
    );
  }

  @override
  String toString() =>
      "RestoredPeripheral(id: $id, name: $name, subscriptions: $subscriptions)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is RestoredPeripheral &&
      other.runtimeType == runtimeType &&
      id == other.id &&
      name == other.name &&
      const DeepCollectionEquality().equals(subscriptions, other.subscriptions);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + id.hashCode;
    result = 37 * result + name.hashCode;
    result = 37 * result + const DeepCollectionEquality().hash(subscriptions);
    return result;
  }
}

class RestoredPeripheral$Change {
  RestoredPeripheral$Change._(
    this.id,
    this.name,
    this.subscriptions,
  );

  String id;
  String name;
  List<QualifiedCharacteristic> subscriptions;
}

// ignore: avoid_classes_with_only_static_members
class RestoredPeripheral$ {
  static final id = Lens<RestoredPeripheral, String>(
    (idContainer) => idContainer.id,
    (idContainer, id) => idContainer.copyWith(id: id),
  );

  static final name = Lens<RestoredPeripheral, String>(
    (nameContainer) => nameContainer.name,
    (nameContainer, name) => nameContainer.copyWith(name: name),
  );

  static final subscriptions =
      Lens<RestoredPeripheral, List<QualifiedCharacteristic>>(
    (subscriptionsContainer) => subscriptionsContainer.subscriptions,
    (subscriptionsContainer, subscriptions) =>
        subscriptionsContainer.copyWith(subscriptions: subscriptions),
  );
}
