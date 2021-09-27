Pod::Spec.new do |s|
  s.name     = 'ServiceSDK'
  s.version  = '234.0.0'
  s.author   = 'Salesforce'
  s.summary  = 'iOS ServiceSDK'
  s.homepage = 'https://developer.salesforce.com/page/SnapinsMobile'

  s.source   = { :http => 'https://developer.salesforce.com/files/service_sdk_ios/234.0.0/ServiceSDK-234.0.0.dmg' }

  s.platform = :ios, '9.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.subspec 'All' do |all|

    all.vendored_frameworks = [
      'Frameworks/ServiceChat.xcframework',
      'Frameworks/ServiceCases.xcframework',
      'Frameworks/ServiceKnowledge.xcframework',
      'Frameworks/ServiceCore.xcframework',
    ]

  end

  s.subspec 'Chat' do |chat|

    chat.vendored_frameworks = [
      'Frameworks/ServiceChat.xcframework',
      'Frameworks/ServiceCore.xcframework',
     ]

  end

  s.subspec 'Knowledge' do |knowledge|

    knowledge.vendored_frameworks = [
      'Frameworks/ServiceKnowledge.xcframework',
      'Frameworks/ServiceCore.xcframework',
     ]

  end

  s.subspec 'Cases' do |cases|

    cases.vendored_frameworks = [
      'Frameworks/ServiceCases.xcframework',
      'Frameworks/ServiceCore.xcframework',
     ]

  end

  s.default_subspec = 'All'

  s.xcconfig  = { 
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ServiceSDK/"',
    'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"',
  }

  s.requires_arc = true
end
