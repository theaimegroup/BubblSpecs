Pod::Spec.new do |s|
  s.name             = 'BubblPlugin'
  s.version          = '2.0.5'
  s.summary          = 'Highly-accurate geofence activation & analytics SDK.'
  s.homepage         = 'https://bubbl.tech'
  s.license          = { type: 'Custom', text: 'Copyright Bubbl Tech LTD' }
  s.authors          = { 'Bubbl' => 'ios@bubbl.tech' }
  s.platform         = :ios, '15.0'
  s.swift_version    = '5.9'
  s.source           = {
    git: 'https://github.com/theaimegroup/BubblPlugin.git',
    tag: s.version.to_s
  }

  # Include every Swift file under Sources/
  s.source_files     = 'Sources/**/*.swift'
  s.exclude_files    = ['Tests/**/*', 'Package.swift']

  # CocoaPods dependencies
  s.dependency       'Firebase/Analytics', '~> 10.22.0'
  s.dependency       'Firebase/Messaging', '~> 10.22.0'

  # System frameworks
  s.frameworks       = 'UIKit', 'CoreLocation', 'UserNotifications'
  s.static_framework = true
end
