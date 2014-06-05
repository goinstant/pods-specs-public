Pod::Spec.new do |s|
  s.name     = 'OpenTok'
  s.version  = '2.2.0-beta-dev-1'
  s.author   = 'TokBox'
  s.summary  = 'The OpenTok iOS SDK lets you use OpenTok video sessions in apps you build for iPad, iPhone, and iPod touch devices.'
  s.homepage = 'https://github.com/opentok/opentok-ios-sdk-webrtc/'
  s.license  = { :type => 'Apache', :file => 'LICENSE.txt' }

  s.source       = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/228a5a06-9feb-4cef-9b72-9aac6b5b5234/OpenTok-SDK.2.2.0-beta-dev-1.tar.gz' }

  s.platform = :ios, '5.0'

  s.source_files = 'OpenTok.framework/Versions/A/Headers/*.h'
  s.resources    = 'OpenTok.framework/Versions/A/OpenTok'
  s.preserve_paths = 'OpenTok.framework'
  s.requires_arc = false

  other_frameworks = 'Opentok', 'UIKit', 
                 'CoreMedia', 'CoreVideo', 'CoreAudio', 'CoreTelephony',
                 'CFNetwork', 'AVFoundation', 'SystemConfiguration', 'Security',
                 'QuartzCore', 'AudioToolbox', 'OpenGLES', 'MobileCoreServices'

  other_ldflags = '$(inherited) -framework ' + other_frameworks.join(' -framework ') + ' -lz -lsqlite3.0 -lstdc++ -lxml2.2'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AddLive"',
    
    'OTHER_LDFLAGS[arch=arm64]'  => other_ldflags,
    'OTHER_LDFLAGS[arch=armv7]'  => other_ldflags,
    'OTHER_LDFLAGS[arch=armv7s]' => other_ldflags 
  }

end
