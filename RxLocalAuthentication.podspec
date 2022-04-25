#
# Be sure to run `pod lib lint RxLocalAuthentication.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxLocalAuthentication'
  s.version          = '1.0.4'
  s.swift_versions   = '5.0'
  s.summary          = 'Rx wrapper over LocalAuthentication framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This Library made for use LocalAuthentication with RxSwift
                       DESC

  s.homepage         = 'https://github.com/Skyline-23/RxLocalAuthentication'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Skyline-23' => 'bs2740@naver.com' }
  s.source           = { :git => 'https://github.com/Skyline-23/RxLocalAuthentication.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/RxLocalAuthentication/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RxLocalAuthentication' => ['RxLocalAuthentication/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'LocalAuthentication'
  s.dependency "RxSwift", '~> 6.0'
end
