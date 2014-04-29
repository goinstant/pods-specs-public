Pod::Spec.new do |s|
  s.name         = "EngineIOClient"
  s.version      = "0.2.0-release"
  s.platform     = :ios
  s.summary      = "engine.io objc implementation"
  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.platform = :ios, '6.0'
  s.requires_arc = true
  s.dependency 'SocketRocket', '~> 0.3.1-beta2'
  s.source       = { :http => 'https://cdn.goinstant.net/mobile/ios/engine.io-client/v0.2.0/engine.io-client-ios-sdk.0.2.0.tar.gz' }

  s.source_files = 'EngineIOClient.framework/Versions/A/Headers/*.h'
  s.preserve_paths = 'EngineIOClient.framework'

  s.frameworks = 'CFNetwork', 'Security'
  s.libraries = 'icucore'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/EngineIOClient/"'
  }

end
