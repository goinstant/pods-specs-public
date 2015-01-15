Pod::Spec.new do |s|
  s.name         = "SOS"
  s.version      = "0.8.0"
  s.platform     = :ios
  s.summary      = "obj-c driver for GoInstant SOS"

  s.homepage     = "https://goinstant.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }

  s.source       = { :http => 'https://s3.amazonaws.com/cdn.goinstant.net/mobile/ios/sos/v0.8.0/SOS-iOS-SDK-v0.8.0.tar.gz' }
  s.platform = :ios, "7.0"

  
  s.dependency 'OpenTok', '2.3.1-sc'
  

  s.libraries = 'z'
  s.frameworks = 'SOS', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'
  
  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.requires_arc = true
  
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"'
  }
end
