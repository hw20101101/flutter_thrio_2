import UIKit
import Flutter


@UIApplicationMain

@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    GeneratedPluginRegistrant.register(with: self)

    ThrioModule.`init`(MainModule())
    
    let nvc = NavigatorNavigationController(url: "/biz1/flutter1", params: nil) as UINavigationController
    window.rootViewController = nvc
    window.makeKeyAndVisible()
    
    //延长启动图的显示时间
    Thread.sleep(forTimeInterval: 1.5)
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
