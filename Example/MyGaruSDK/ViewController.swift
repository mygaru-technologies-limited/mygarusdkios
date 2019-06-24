//
//  ViewController.swift
//  MyGaruSDK
//
//  Created by oleg_agapi on 04/17/2019.
//  Copyright (c) 2019 oleg_agapi. All rights reserved.
//

import UIKit
import MyGaruSDK
import Contacts
import EventKit
import Photos
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    let contactsStore = CNContactStore()
    
    @IBAction func showMyGaruUI() {
        do {
            let mygaruViewController = try MyGaruSDK.instantiateMyGaruViewController() {
                print("MyGaruSDK closed")
            }
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
                result ? print("YAY! Your data uploaded successfully") : print("NOOO! Your data failed to upload")
            }
        } catch (let error) {
            print("Couldn't send data: \(error)")
        }
    }
    
    
    @IBAction func requestPermissions() {
        CNContactStore().requestAccess(for: .contacts) { (_, _) in
            EKEventStore().requestAccess(to: .event) { (_, _) in
                PHPhotoLibrary.requestAuthorization { _ in
                    DispatchQueue.main.async { [weak self] in
                        self?.locationManager.requestAlwaysAuthorization()
                    }
                }
            }
        }

    }


}

