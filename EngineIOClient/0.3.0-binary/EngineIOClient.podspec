Pod::Spec.new do |s|
  s.name         = "EngineIOClient"
  s.version      = "0.3.0-binary"
  s.platform     = :ios
  s.summary      = "engine.io objc implementation"
  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.platform = :ios, '6.0'
  s.requires_arc = true
  s.source       = { :http => 'https://cdn.goinstant.net/mobile/ios/engine.io-client/v0.3.0/EngineIOClient-iOS-SDK-v0.3.0.tar.gz' }

  
  s.dependency 'SocketRocket', '0.3.1-beta2'
  

  s.source_files = 'EngineIOClient.framework/Versions/A/Headers/*.h'
  s.preserve_paths = 'EngineIOClient.framework'

  s.frameworks = 'EngineIOClient', 'CFNetwork', 'Security'
  s.libraries = 'icucore'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/EngineIOClient/"'
  }

end
