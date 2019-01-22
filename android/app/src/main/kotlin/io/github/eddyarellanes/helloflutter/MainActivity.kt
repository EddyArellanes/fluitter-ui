//flutter emulators 
package io.github.eddyarellanes.helloflutter
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT)
  }
}
