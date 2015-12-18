Pod::Spec.new do |s|
  s.name     = 'SOS'
  s.version  = '1.2.5'
  s.author   = 'Salesforce'
  s.summary  = 'iOS SOS SDK'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/sdk/v1.2.5/SOS-iOS-SDK-v1.2.5.tar.gz' }

  s.platform = :ios, '8.0'

  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'

  s.frameworks = 'SOS', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'

  
  s.dependency 'OpenTok', '2.6.1'
  

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"' }

  s.requires_arc = true
end
