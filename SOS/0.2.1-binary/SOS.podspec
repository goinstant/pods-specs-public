Pod::Spec.new do |s|
  s.name         = "SOS"
  s.version      = "0.2.1-binary"
  s.platform     = :ios
  s.summary      = "obj-c driver for GoInstant SOS"

  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.source       = { :http => 'https://s3.amazonaws.com/cdn.goinstant.net/mobile/ios/sos/v0.2.1/SOS-iOS-SDK-v0.2.1.tar.gz' }
  s.platform = :ios, "6.1"

  
  s.dependency 'GoInstant', '0.2.2-binary'
  
  
  s.dependency 'OpenTok', '2.2.0-beta-3'
  
  s.dependency 'MBProgressHUD', '~> 0.8'
  

  s.frameworks = 'SOS'
  s.libraries = 'z'
  
  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.requires_arc = true
  
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"'
  }
end
