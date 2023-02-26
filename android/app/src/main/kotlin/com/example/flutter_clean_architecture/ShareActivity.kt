package com.example.flutter_clean_architecture

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class ShareActivity: FlutterActivity() {
    private var sharedText: String? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (Intent.ACTION_SEND == intent.action) {
            intent.getStringExtra(Intent.EXTRA_TEXT)?.also {
                sharedText = it
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "app.channel.shared.data"
        ).setMethodCallHandler { call, result ->
            sharedText?.also {
                call.method?.also { method ->
                    if (method.contentEquals("getSharedText")) {
                        result.success(it)
                        sharedText = null
                    }
                }
            }
        }
    }
}
