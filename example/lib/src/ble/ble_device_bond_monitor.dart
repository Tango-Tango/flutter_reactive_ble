import 'dart:async';

import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:flutter_reactive_ble_example/src/ble/reactive_state.dart';

class BleDeviceBondMonitor implements ReactiveState<DeviceBondState> {
  BleDeviceBondMonitor(this._ble);

  final FlutterReactiveBle _ble;

  @override
  Stream<DeviceBondState> get state => _bondStateController.stream;

  final StreamController<DeviceBondState> _bondStateController =
      StreamController();

  StreamSubscription<DeviceBondState>? _bondStateSubscription;

  void startMonitoringDevice(String deviceId) {
    _bondStateSubscription ??= _ble.bondUpdateStream
        .where((update) => update.deviceId == deviceId)
        .map((update) => update.bondState)
        .listen(_bondStateController.add);
  }

  void stopMontoringDevice(String deviceId) {
    _bondStateSubscription?.cancel();
    _bondStateSubscription = null;
  }

  Future<void> dispose() async {
    await _bondStateController.close();
  }
}
