# MyGaruSDK

[![CI Status](https://img.shields.io/travis/oleg_agapi/MyGaruSDK.svg?style=flat)](https://travis-ci.org/oleg_agapi/MyGaruSDK)
[![Version](https://img.shields.io/cocoapods/v/MyGaruSDK.svg?style=flat)](https://cocoapods.org/pods/MyGaruSDK)
[![License](https://img.shields.io/cocoapods/l/MyGaruSDK.svg?style=flat)](https://cocoapods.org/pods/MyGaruSDK)
[![Platform](https://img.shields.io/cocoapods/p/MyGaruSDK.svg?style=flat)](https://cocoapods.org/pods/MyGaruSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
MyGaruSDK compatible with both Swift and Objective-C.
You will need Swift 5.0+ and Xcode 10.2+

## Getting API Key

First, you'll need to get your MyGaruSDK iOS API key. To find these,  select the 'myGaru for iOS' option in your [app settings](https://forinfinite.pw/#/dev/my-apps).


## Installation

MyGaruSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MyGaruSDK'
```

## Initialization

For every file that are using  MyGaruSDK, add:
```swift
import MyGaruSDK
```

Then, initialize MyGaruSDK by adding the following to your AppDelegate class:
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    MyGaruSDK.initialization(apiKey: "YOUR_API_KEY", appIdentifier: "APP_BUNDLE_ID")
}
```

## Usage

To take advantage of MyGaruSDK functionality, your user must login first into MyGaru. For this, present login flow use following code:
```swift
do {
    let myGaruVC = try MyGaruSDK.showDashboard()
    self.present(myGaruVC, animated: true, completion: nil)
} catch (let error) {
    print("Couldn't start an SDK: \(error)")
}
```

To send data to MyGaru, use following:
```swift
do {
    let parameters = ["lucky_number": 42]
    try MyGaruSDK.sendData(description: "Test Collection", parameters: parameters) { (result: Bool) in
        result ? print("YAY!") : print("NOOO!")
    }
} catch (let error) {
    print("Couldn't send data: \(error)")
}
```

See Example project for more information.

## Author

Oleg Agapov, o.agapov@mygaru.com

## License

MyGaruSDK is available under the Apache License, Version 2.0. See the LICENSE file for more info.
