Pod::Spec.new do |s|
  s.name         = "SOS"
  s.version      = "0.1.13-dev"
  s.platform     = :ios, "6.1"
  s.summary      = "obj-c driver for GoInstant SOS"
  s.homepage     = "https://github.com/goinstant/sos-framework"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "GoInstant inc." => "support@goinstant.com" }
  s.source       = { :git => "git@github.com:goinstant/sos-framework.git", :tag => "v0.1.13" }

  
  s.dependency 'GoInstant', '0.2.0'
  

  
  s.dependency 'AddLive', '3.0.1.26'
  
  s.dependency 'MBProgressHUD', '0.8'
  

  s.source_files = 'SOS/**/*.{h,m}'
  s.resources = 'SOS/Resources/**/*.*'

  s.requires_arc = true
  s.libraries = 'z'

  s.ios.deployment_target = "6.1"
  s.prefix_header_file = 'SOS/SOS-Prefix.pch'
end
