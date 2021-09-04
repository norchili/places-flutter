package com.example.platzi_trips_app

import io.flutter.embedding.android.FlutterActivity
import android.annotation.TargetApi
import android.os.Build
import android.os.Bundle

class MainActivity: FlutterActivity() {
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT)
    }
}
