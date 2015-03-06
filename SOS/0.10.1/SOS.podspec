Pod::Spec.new do |s|
  s.name     = 'SOS'
  s.version  = '0.10.1'
  s.author   = 'Salesforce'
  s.summary  = 'iOS SOS SDK'
  s.homepage = 'https://sos.goinstant.net'


  s.source   = { :http => 'https://s3.amazonaws.com/sos.goinstant.net/ios/sdk/v0.10.1/SOS-iOS-SDK-v0.10.1.tar.gz' }

  s.platform = :ios, '7.0'

  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.frameworks = 'SOS', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'

  s.libraries = 'z'

  
  s.dependency 'OpenTok', '2.4.0'
  

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"' }

  s.requires_arc = true
end
