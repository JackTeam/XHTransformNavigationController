#
#  Be sure to run `pod spec lint XHTransformNavigationController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "XHTransformNavigationController"
  s.version      = "0.0.1"
  s.summary      = "利用导航控制器的时候，经常会遇到，在某个页面不需要navigationBar，有些页面需要navigationBar，控制navigationBar的隐藏和显示的过程中会出现头部空白区域，那就是navigationBar隐藏之后，留下的系统Bug， 在这里提供一个解决方案"
  s.homepage     = "https://github.com/JackTeame/XHTransformNavigationController"
  s.license      = 'MIT'
  s.author       = { "xhzengAIB" => "xhzengAIB@gmail.com" }
  s.source       = { :git => "https://github.com/JackTeame/XHTransformNavigationController.git", :tag => "0.0.1" }
  s.source_files  = 'Source', 'Source/**/*.{h,m}'
  s.exclude_files = 'Source/Resource'
end
