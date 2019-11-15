//
//  AppDelegate.swift
//  RetirementCalculator
//
//  Created by Rahul on 14/11/19.
//  Copyright © 2019 Servify. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        MSAppCenter.start("ad6068c9-4e33-4ea0-b720-7d0775b35402", withServices:[
          MSAnalytics.self,
          MSCrashes.self
        ])
        
        return true
    }


}

