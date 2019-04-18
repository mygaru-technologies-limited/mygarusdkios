//
//  ViewController.swift
//  MyGaruSDK
//
//  Created by oleg_agapi on 04/17/2019.
//  Copyright (c) 2019 oleg_agapi. All rights reserved.
//

import UIKit
import MyGaruSDK

class ViewController: UIViewController {
    
    @IBAction func showMyGaruUI() {
        do {
            let mygaruViewController = try MyGaruSDK.showDashboard()
            self.present(mygaruViewController, animated: true, completion: nil)
        } catch (let error) {
            print("Couldn't start an SDK: \(error)")
        }
    }
    
    @IBAction func sendTestData() {
        do {
            let parameters = ["lucky_number": 42,
                              "unlucky_number": 13]
            try MyGaruSDK.sendData(description: "Lucky Number", parameters: parameters) { (result: Bool) in
                result ? print("YAY!") : print("NOOO!")
            }
        } catch (let error) {
            print("Couldn't send data: \(error)")
        }
    }

}

