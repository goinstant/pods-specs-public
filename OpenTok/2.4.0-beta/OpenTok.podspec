Pod::Spec.new do |s|
  s.name     = 'OpenTok'
  s.version  = '2.4.0-beta'
  s.author   = 'TokBox'
  s.summary  = 'The OpenTok iOS SDK lets you use OpenTok video sessions in apps you build for iPad, iPhone, and iPod touch devices.'
  s.homepage = 'https://github.com/opentok/opentok-ios-sdk-webrtc/'

  s.source       = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/228a5a06-9feb-4cef-9b72-9aac6b5b5234/OpenTok-iOS-2.4.0-beta.tar.gz' }

  s.platform = :ios, '7.0'

  s.source_files = 'OpenTok.framework/Headers/*.h'

  s.frameworks = 'Opentok', 'UIKit', 
                 'CoreMedia', 'CoreVideo', 'CoreAudio', 'CoreTelephony',
                 'CFNetwork', 'AVFoundation', 'SystemConfiguration', 'Security',
                 'QuartzCore', 'AudioToolbox', 'OpenGLES', 'MobileCoreServices'

  s.libraries = 'c++', 'z', 'sqlite3.0', 'xml2.2', 'icucore'

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/OpenTok/"' }

  s.preserve_paths = 'OpenTok.framework'

  s.requires_arc = false
end
