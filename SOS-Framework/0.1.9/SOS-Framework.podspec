Pod::Spec.new do |s|
  s.name         = "SOS-Framework"
  s.version      = "0.1.9"
  s.platform     = :ios
  s.summary      = "obj-c driver for GoInstant SOS"

  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.source       = { :http => 'https://s3.amazonaws.com/cdn.goinstant.net/mobile/ios/sos/v0.1.9/sos-ios-sdk.0.1.9.tar.gz' }
  s.platform = :ios, "7.0"

  s.dependency 'GoInstant-Framework', '~> 0.1.14'
  s.dependency 'AddLive', '~> 3.0.1.26'
  s.dependency 'MBProgressHUD', '~> 0.8'
  s.libraries = 'z'
  
  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.requires_arc = true
end
