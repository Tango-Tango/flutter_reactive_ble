package com.signify.hue.flutterreactiveble.channelhandlers

import io.flutter.plugin.common.EventChannel

class RestoredDeviceHandler() : EventChannel.StreamHandler {
    private var sink: EventChannel.EventSink? = null

    override fun onListen(
        objectSink: Any?,
        eventSink: EventChannel.EventSink?,
    ) {
        eventSink?.let {
            sink = eventSink
        }
    }

    override fun onCancel(objectSink: Any?) {
        sink = null
    }
}