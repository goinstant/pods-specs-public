Pod::Spec.new do |s|
  s.name     = 'SOS'
  s.version  = '2.0.0'
  s.author   = 'Salesforce'
  s.summary  = 'iOS SOS SDK'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/sdk/v2.0.0/SOS-iOS-SDK-v2.0.0.tar.gz' }

  s.platform = :ios, '8.0'

  s.source_files = 'SOS.framework/Versions/A/Headers/*.h'
  s.resource = 'SOS.framework/Versions/A/Resources/SOS.bundle'
  s.preserve_paths = 'SOS.framework'
  s.vendored_frameworks = 'SalesforceKit.framework'

  s.frameworks = 'SOS', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'

  
  s.dependency 'OpenTok', '2.7.1'
  

  s.xcconfig  = { 
  'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/"',
  'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"',
  'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SOS/SOS.framework/Headers"'
  }

  s.requires_arc = true
end
