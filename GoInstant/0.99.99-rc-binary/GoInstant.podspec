Pod::Spec.new do |s|
  s.name         = "GoInstant"
  s.version      = "0.99.99-rc-binary"
  s.platform     = :ios
  s.summary      = "obj-c driver for GoInstant's Platform"

  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.source       = { :http => 'https://s3.amazonaws.com/cdn.platform-staging.goinstant.org/mobile/ios/goinstant/v0.99.99-rc/GoInstant-iOS-SDK-v0.99.99-rc.tar.gz' }

  s.dependency 'EngineIOClient', '0.2.0-release'
  s.frameworks = 'GoInstant'

  s.source_files = 'GoInstant.framework/Versions/A/Headers/*.h'
  s.preserve_paths = 'GoInstant.framework'

  s.platform = :ios, '6.0'
  s.requires_arc = true

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/GoInstant/"'
  }

end
