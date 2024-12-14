package com.signify.hue.flutterreactiveble.channelhandlers

import io.flutter.plugin.common.EventChannel
import com.signify.hue.flutterreactiveble.ProtobufModel as pb

class RestoredDeviceHandler() : EventChannel.StreamHandler {
    private var sink: EventChannel.EventSink? = null

    override fun onListen(
        objectSink: Any?,
        eventSink: EventChannel.EventSink?,
    ) {
        eventSink?.let {
            sink = eventSink

            val message = pb.RestoredDeviceInfoCollection.newBuilder().build()
            eventSink.success(message.toByteArray())
        }

    }

    override fun onCancel(objectSink: Any?) {
        sink = null
    }
}