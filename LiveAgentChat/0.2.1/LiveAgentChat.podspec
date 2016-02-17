Pod::Spec.new do |s|
  s.name     = 'LiveAgentChat'
  s.version  = '0.2.1'
  s.author   = 'Salesforce'
  s.summary  = 'iOS LiveAgent Chat SDK'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/ios/liveagent-chat/sdk/v0.2.1/LiveAgentChat-iOS-SDK-v0.2.1.tar.gz' }

  s.platform = :ios, '8.0'

  s.source_files = 'LiveAgentChat.framework/Versions/A/Headers/*.h'
  s.resource = 'LiveAgentChat.framework/Versions/A/Resources/*.bundle'
  s.preserve_paths = 'LiveAgentChat.framework'
  s.vendored_frameworks = 'SalesforceKit.framework'

  s.frameworks = 'LiveAgentChat'



  s.xcconfig  = {
  'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/LiveAgentChat/"',
  'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"',
  'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/LiveAgentChat/LiveAgentChat.framework/Headers"'
  }

  s.requires_arc = true
end
