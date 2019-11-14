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
        
        MSAppCenter.start("a7a07a3a-97b1-4e8f-84f6-e92ccfc59f5d", withServices:[
          MSAnalytics.self,
          MSCrashes.self
        ])
        
        return true
    }


}

