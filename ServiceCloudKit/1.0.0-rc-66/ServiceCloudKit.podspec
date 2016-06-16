Pod::Spec.new do |s|
  s.name     = 'ServiceCloudKit'
  s.version  = '1.0.0-rc-66'
  s.author   = 'Salesforce'
  s.summary  = 'iOS ServiceCloudKit'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/servicecloudkit/release/66/ServiceCloudKit.framework.zip' }

  s.platform = :ios, '8.0'
  s.vendored_frameworks = 'ServiceCloudKit.framework'
  s.dependency 'SalesforceKit', '1.0.0-unstable-50'

  s.requires_arc = true

  s.xcconfig  = { 'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"' }
end
