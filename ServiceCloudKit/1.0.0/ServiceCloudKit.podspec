Pod::Spec.new do |s|
  s.name     = 'ServiceCloudKit'
  s.version  = '1.0.0'
  s.author   = 'Salesforce'
  s.summary  = 'iOS ServiceCloudKit'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'http://salesforcesos.com/ios/servicecloudkit/production/v1.0.0/ServiceCloudKit.dmg' }

  s.platform = :ios, '8.0'
  s.vendored_frameworks = 'Frameworks/*.framework'

  s.requires_arc = true

  s.xcconfig  = { 'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"' }
end
