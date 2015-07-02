Pod::Spec.new do |s|
  s.name     = 'SOS'
  s.version  = '1.0.1'
  s.author   = 'Salesforce'
  s.summary  = 'iOS SOS SDK'
  s.homepage = 'https://salesforcesos.com'


  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/sdk/v1.0.1/SOS-iOS-SDK-v1.0.1.tar.gz' }

  s.platform = :ios, '7.0'

  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.frameworks = 'SOS', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'

  s.libraries = 'z'

  
  s.dependency 'OpenTok', '2.5.0'
  

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"' }

  s.requires_arc = true
end
