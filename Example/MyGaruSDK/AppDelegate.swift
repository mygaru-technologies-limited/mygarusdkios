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
//        MyGaruSDK.initialization(apiKey: "YOUR_API_KEY")
        MyGaruSDK.initialization(apiKey: "a5cbf75c788d27b8df5fc9032a06a45fc013378e17c2922a0378f7b8ccd317032864ebf258d0573d88dfb016370bd4a19f3a")

        return true
    }
    
}

