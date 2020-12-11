//
//  AppDelegate.swift
//  OnePiece
//
//  Created by wangna on 2020/12/7.
//

import UIKit
import CocoaLumberjack.DDDispatchQueueLogFormatter

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    setupThirdPartyConfiguration()
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }

}

extension AppDelegate {
  private func setupThirdPartyConfiguration() {
    initLogSystem()
  }
  
  private func initLogSystem() {
    DDLog.add(DDOSLogger.sharedInstance)
    let fileLogger = DDFileLogger()
    // 24 hour rolling
    fileLogger.rollingFrequency = 60 * 60 * 24
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    DDLog.add(fileLogger)
    
  }
}

