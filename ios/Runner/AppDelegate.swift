import Flutter
import UIKit
import GoogleMaps
import FirebaseCore

@main
@objc class AppDelegate: FlutterAppDelegate{
 
    override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)
      if let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String {
        GMSServices.provideAPIKey(apiKey)
        GeneratedPluginRegistrant.register(with: self)
          
      } else {
          print("API Key not found in Info.plist")
      }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
