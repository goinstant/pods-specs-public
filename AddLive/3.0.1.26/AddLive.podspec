Pod::Spec.new do |s|
  s.name         = "AddLive"
  s.version      = "3.0.1.26"
  s.author       = "LiveFoundry"
  s.summary      = "AddLive"
  s.homepage     = "http://www.addlive.com/"

  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
          Copyright (C) LiveFoundry Inc 2013

          All rights reserved. Any use, copying, modification, distribution and selling
          of this software and it's documentation for any purposes without authors' written
          permission is hereby prohibited.
    LICENSE
  }

  s.source       = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/82148bd0-b900-11e3-a5e2-0800200c9a66/AddLive_iOS_SDK.3.0.1.26.tar' }
  s.preserve_paths = 'AddLive.framework'
  s.platform     = :ios, '6.0'

  s.source_files = 'AddLive.framework/Versions/3.0.1.26/Headers/*.h'

  other_frameworks = ['AddLive', 'Security', 'MessageUI', 'SystemConfiguration', 'QuartzCore', 'OpenGLES', 'CoreMedia', 'CoreVideo', 'AVFoundation', 'AudioToolbox', 'UIKit', 'Foundation', 'CoreGraphics']

  other_ldflags = '$(inherited) -framework ' + other_frameworks.join(' -framework ') + ' -lz -lresolv -lc++'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AddLive"',
    
    'OTHER_LDFLAGS[arch=arm64]'  => other_ldflags,
    'OTHER_LDFLAGS[arch=armv7]'  => other_ldflags,
    'OTHER_LDFLAGS[arch=armv7s]' => other_ldflags 
  }

end
