import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyCsmwHQ6RdIUJ0Rzp_HP1f3I4pN-GdYWGs")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
