Pod::Spec.new do |s|
  s.name         = "QITechIosFaceRecon"
  s.version      = "8.0.0-rc"
  s.summary      = "QITechIosFaceRecon"
  s.homepage     = "https://github.com/ZaigCoding/iOS"

  s.license      = { 
    :type => 'Commercial',
    :text => 'Copyright © QI Tech Risk Solutions. All rights reserved.'
  }

  s.author       = { 'QI Tech Risk Solutions' => 'suporte.caas@qitech.com.br' }
  s.source       = { :http => "https://sdks.sandbox.qitech.com.br/com/qitech/ios/QITechIosFaceRecon/8.0.0-rc/QITechIosFaceRecon.xcframework.zip" }

  s.vendored_frameworks = "QITechIosFaceRecon.xcframework"
  s.resources = "QITechIosFaceRecon.xcframework/**/QITechIosFaceReconResources.bundle"

  s.platform      = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '15.5'

  s.dependency 'GoogleMLKit/FaceDetection', '~> 9.0'
  s.dependency 'DatadogCore', '~> 2.0'
  s.dependency 'DatadogCrashReporting', '~> 2.0'
  s.dependency 'DatadogLogs', '~> 2.0'
  s.dependency "QITechIosDeviceScan", '~> 6.0.0'

  s.static_framework = true

  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end