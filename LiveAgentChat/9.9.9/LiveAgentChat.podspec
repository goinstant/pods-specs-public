Pod::Spec.new do |s|
  s.name     = 'LiveAgentChat'
  s.version  = '9.9.9'
  s.author   = 'Salesforce'
  s.summary  = 'iOS LiveAgent Chat SDK'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/ios/liveagent-chat/sdk/v9.9.9/LiveAgentChat-iOS-SDK-v9.9.9.tar.gz' }

  s.platform = :ios, '8.0'

  s.source_files = 'LiveAgentChat.framework/Versions/A/Headers/*.h'
  s.resource = 'LiveAgentChat.framework/Versions/A/Resources/*.bundle'
  s.preserve_paths = 'LiveAgentChat.framework'

  s.frameworks = 'LiveAgentChat'

  

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/LiveAgentChat/"' }

  s.requires_arc = true
end
