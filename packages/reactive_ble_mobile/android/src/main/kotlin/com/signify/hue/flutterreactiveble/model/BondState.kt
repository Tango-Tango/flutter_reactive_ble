package com.signify.hue.flutterreactiveble.model

import android.bluetooth.BluetoothDevice
import com.polidea.rxandroidble2.RxBleDevice

enum class BondState(val code: Int) {
    NONE(0),
    BONDING(1),
    BONDED(2);

    companion object {
        fun fromRaw(raw: Int): BondState {
            return when (raw) {
                BluetoothDevice.BOND_BONDING -> BONDING
                BluetoothDevice.BOND_BONDED -> BONDED
                else -> NONE
            }
        }
    }
}

fun RxBleDevice.getBondState(): BondState =
    BondState.fromRaw(bluetoothDevice.bondState)