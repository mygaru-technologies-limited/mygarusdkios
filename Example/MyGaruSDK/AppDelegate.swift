//
//  AppDelegate.swift
//  MyGaruSDK
//
//  Created by oleg_agapi on 04/17/2019.
//  Copyright (c) 2019 oleg_agapi. All rights reserved.
//

import UIKit
import MyGaruSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MyGaruSDK.initialization(apiKey: "YOUR_API_KEY")
        return true
    }
    
}

