#
# Be sure to run `pod lib lint QQMTASDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QQMTASDK'
  s.version          = '0.1.2'
  s.summary          = 'iOS MTASDK with hybrid library for CocoaPods '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Add MTASDK to CocoaPods.
  No idfa.
  MTA release number is v2.2.1.
                       DESC

  s.homepage         = 'https://github.com/bing900717/QQMTASDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bing900717' => 'yaoxb@ramnova.com' }
  s.source           = { :git => 'https://github.com/bing900717/QQMTASDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'QQMTASDK/Classes/*.{h,m}'
  s.frameworks = 'QuartzCore','Security','CFNetwork','SystemConfiguration','CoreTelephony','UIKit','Foundation','CoreGraphics'
  s.vendored_libraries = 'QQMTASDK/libmtasdk.a','QQMTASDK/libMTAHybrid.a'
  s.libraries = 'sqlite3','z'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }  
  # s.resource_bundles = {
  #   'QQMTASDK' => ['QQMTASDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
