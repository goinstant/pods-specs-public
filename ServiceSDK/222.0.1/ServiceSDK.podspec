Pod::Spec.new do |s|
  s.name     = 'ServiceSDK'
  s.version  = '222.0.1'
  s.author   = 'Salesforce'
  s.summary  = 'iOS ServiceSDK'
  s.homepage = 'https://developer.salesforce.com/page/SnapinsMobile'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/servicesdk/222.0.1/ServiceSDK-222.0.1.dmg' }

  s.platform = :ios, '10.0'

  s.subspec 'All' do |all|

    all.vendored_frameworks = [
      'Frameworks/ServiceSOS.framework',
      'Frameworks/ServiceChat.framework',
      'Frameworks/ServiceCases.framework',
      'Frameworks/ServiceKnowledge.framework',
      'Frameworks/ServiceCore.framework',
    ]

  end

  s.subspec 'SOS' do |sos|

    sos.vendored_frameworks = [
      'Frameworks/ServiceSOS.framework',
      'Frameworks/ServiceCore.framework',
     ]

  end
  
  s.subspec 'Chat' do |chat|

    chat.vendored_frameworks = [
      'Frameworks/ServiceChat.framework',
      'Frameworks/ServiceCore.framework',
     ]

  end

  s.subspec 'Knowledge' do |knowledge|

    knowledge.vendored_frameworks = [
      'Frameworks/ServiceKnowledge.framework',
      'Frameworks/ServiceCore.framework',
     ]

  end

  s.subspec 'Cases' do |cases|

    cases.vendored_frameworks = [
      'Frameworks/ServiceCases.framework',
      'Frameworks/ServiceCore.framework',
     ]

  end

  s.default_subspec = 'All'

  s.xcconfig  = { 
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ServiceSDK/"',
    'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"',
  }

  s.requires_arc = true
end
