Pod::Spec.new do |s|
  s.name     = 'ServiceSDK'
  s.version  = '246.0.1'
  s.author   = 'Salesforce'
  s.summary  = 'iOS ServiceSDK'
  s.homepage = 'https://developer.salesforce.com/page/SnapinsMobile'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/246.0.1/ServiceSDK-246.0.1.dmg' }

  s.platform = :ios, '12.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.subspec 'All' do |all|

    all.vendored_frameworks = [
      'Frameworks/ServiceChat.xcframework',
      'Frameworks/ServiceCore.xcframework',
    ]

  end

  s.subspec 'Chat' do |chat|
    chat.dependency 'ServiceSDK/Core'
    chat.vendored_frameworks = [
      'Frameworks/ServiceChat.xcframework'
     ]

  end

  s.subspec 'Core' do |core|

    core.vendored_frameworks = [
      'Frameworks/ServiceCore.xcframework'
    ]

  end

  s.default_subspec = 'All'

  s.xcconfig  = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ServiceSDK/"',
    'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"',
  }

  s.requires_arc = true
end
