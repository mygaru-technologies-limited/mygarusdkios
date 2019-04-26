#
# Be sure to run `pod lib lint MyGaruSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyGaruSDK'
  s.version          = '0.0.5'
  s.summary          = 'SDK for MyGaru.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Protect user data
                       DESC

  s.homepage         = 'https://github.com/mygaru-technologies-limited/mygarusdkios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'Oleg Agapov' => 'o.agapov@mygaru.com' }
  s.source           = { :git => 'https://github.com/mygaru-technologies-limited/mygarusdkios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.vendored_frameworks =  'MyGaruSDK/Frameworks/MyGaruSDK.framework'
  
  # s.resource_bundles = {
  #   'MyGaruSDK' => ['MyGaruSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreLocation', 'CoreAudio', 'EventKit', 'Contacts', 'Photos'
  s.dependency 'RxSwift', '~> 4.4'
  s.dependency 'RxCocoa', '~> 4.4'
  s.dependency 'RxOptional', '~> 3.6'
  s.dependency 'Alamofire', '~> 4.8'
  s.dependency 'AlamofireImage', '~> 3.5'
  s.dependency 'Moya', '~> 12.0'
  s.dependency 'Moya/RxSwift'
  s.dependency 'ObjectMapper', '~> 3.4'
  s.dependency 'Moya-ObjectMapper', '~> 2.8'
  s.dependency 'Moya-ObjectMapper/RxSwift'
  s.dependency 'KeychainSwift', '~> 13.0'
  s.dependency 'Starscream',  '~> 3.1'
  
end
