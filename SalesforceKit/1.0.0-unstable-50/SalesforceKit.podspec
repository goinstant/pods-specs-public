Pod::Spec.new do |s|
  s.name     = 'SalesforceKit'
  s.version  = '1.0.0-unstable-50'
  s.author   = 'Salesforce'
  s.summary  = 'SalesforceKit'
  s.homepage = 'https://salesforcesos.com'

  s.source   = { :http => 'https://s3.amazonaws.com/salesforcesos.com/ios/salesforcekit/unstable/50/SalesforceKit-Release.framework.zip' }

  s.platform = :ios, '8.0'
  s.vendored_frameworks = 'SalesforceKit.framework'

  s.requires_arc = true

  s.xcconfig  = { 'LD_RUNPATH_SEARCH_PATHS' => '"@executable_path/Frameworks"' }
end
