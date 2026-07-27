Pod::Spec.new do |s|
  s.name         = "ZaigIosFaceRecon"
  s.version      = "7.1.0-rc1"
  s.summary      = "ZaigIosFaceRecon"
  s.homepage     = "https://github.com/ZaigCoding/iOS"

  s.license      = { 
    :type => 'Commercial',
    :text => 'Copyright © QI Tech Risk Solutions. All rights reserved.'
  }

  s.author       = { 'QI Tech Risk Solutions' => 'suporte@zaig.com.br' }
  s.source       = { :http => "https://sdks.sandbox.zaig.com.br/com/zaig/ios/ZaigIosFaceRecon/7.1.0-rc1/ZaigIosFaceRecon.xcframework.zip" }

  s.vendored_frameworks = "ZaigIosFaceRecon.xcframework"
  s.resources = "ZaigIosFaceRecon.xcframework/**/ZaigIosFaceReconResources.bundle"

  s.platform      = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '15.5'

  s.dependency 'GoogleMLKit/FaceDetection', '~> 8.0'
  s.dependency 'DatadogCore', '~> 2.0'
  s.dependency 'DatadogCrashReporting', '~> 2.0'
  s.dependency 'DatadogLogs', '~> 2.0'
  s.dependency "ZaigIosDeviceScan", '~> 5.0.0'

  s.static_framework = true

  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end