Pod::Spec.new do |s|
    s.name                   = "QITechIosDeviceScan"
    s.version                = "6.0.0"
    s.summary                = "QITechIosDeviceScan"
    s.homepage               = "https://github.com/QITechSDKs/iOS"

    s.license      = { 
      :type => 'Commercial',
      :text => 'Copyright © QI Tech Risk Solutions. All rights reserved.'
    }

    s.author                 = { 'QI Tech Risk Solutions' => 'suporte.caas@qitech.com.br' }
    s.source                 = { :http => "https://sdks.qitech.com.br/com/qitech/ios/QITechIosDeviceScan/6.0.0/QITechIosDeviceScan.xcframework.zip" }

    s.vendored_frameworks = "QITechIosDeviceScan.xcframework"

    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '15.0'

    s.dependency 'DatadogCore', '~> 2.0'
    s.dependency 'DatadogCrashReporting', '~> 2.0'
    s.dependency 'DatadogLogs', '~> 2.0'

    s.static_framework = true
  
    s.pod_target_xcconfig = {
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
      'DEFINES_MODULE' => 'YES'
    }
end