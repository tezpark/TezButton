#
#  Be sure to run `pod spec lint TezButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
@version = "0.1"
Pod::Spec.new do |s|

  s.name         = "TezButton"
  s.version      = @version
  s.summary      = "TezButton is include Title/Backgound Color, border, corner radius options and Bottom/Left label, Include data button."
  s.homepage         = 'https://github.com/tezpark/TezButton'
  s.screenshots      = 'https://cloud.githubusercontent.com/assets/389004/25770963/5abfdf1c-327e-11e7-8432-187f28a3bb81.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tezpark' => 'ptswin@gmail.com' }
  s.source           = { :git => 'https://github.com/tezpark/TezButton.git', :tag => @version }
  s.source_files = 'TezButton/*.*'
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit'

end
