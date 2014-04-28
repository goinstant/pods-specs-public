Pod::Spec.new do |s|
  s.name         = "GoInstant-Framework"
  s.version      = "0.1.14"
  s.platform     = :ios
  s.summary      = "obj-c driver for GoInstant's Platform"
  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }
  s.source       = { :http => 'https://cdn.goinstant.net/mobile/ios/goinstant/v0.1.14/goinstant-ios-sdk.0.1.14.tar.gz' }

  s.dependency 'EngineIOClient-Framework', '~> 0.2.0'

  s.source_files = 'GoInstant.framework/Versions/A/Headers/*.h'
  s.preserve_paths = 'GoInstant.framework'

  s.platform = :ios, '6.0'
  s.requires_arc = true

end
