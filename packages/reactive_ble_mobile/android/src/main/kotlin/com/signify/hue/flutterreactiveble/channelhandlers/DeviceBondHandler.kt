package com.signify.hue.flutterreactiveble.channelhandlers

import com.signify.hue.flutterreactiveble.converters.ProtobufMessageConverter
import io.flutter.plugin.common.EventChannel
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable

class DeviceBondHandler(private val bleClient: com.signify.hue.flutterreactiveble.ble.BleClient) : EventChannel.StreamHandler {
    private var sink: EventChannel.EventSink? = null
    private val converter = ProtobufMessageConverter()

    private lateinit var disposable: Disposable

    override fun onListen(
        objectSink: Any?,
        eventSink: EventChannel.EventSink?,
    ) {
        eventSink?.let {
            sink = eventSink
            disposable = bleClient.bondUpdateSubject
                .distinct()
                .observeOn(AndroidSchedulers.mainThread())
                .map(converter::convertToBondInfo)
                .map { it.toByteArray() }
                .subscribe { sink?.success(it) }
        }
    }

    override fun onCancel(objectSink: Any?) {
        disposable.dispose()
    }
}