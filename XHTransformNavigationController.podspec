Pod::Spec.new do |s|
  s.name         = "XHTransformNavigationController"
  s.version      = "0.0.1"
  s.summary      = "利用导航控制器的时候，经常会遇到，在某个页面不需要navigationBar，有些页面需要navigationBar， 控制navigationBar的隐藏和显示的过程中会出现头部空白区域，那就是navigationBar隐藏之后，留下的系统Bug， 在这里提供一个解决方案"
  s.homepage     = "https://github.com/JackTeame/XHTransformNavigationController"
  s.license      = "MIT"
  s.authors      = { "xhzengAIB" => "xhzengAIB@gmail.com" }
  s.source       = { :git => "https://github.com/JackTeame/XHTransformNavigationController.git", :tag => "v0.0.1" }
  s.frameworks   = 'Foundation', 'CoreGraphics', 'UIKit'
  s.platform     = :ios, '5.0'
  s.source_files = 'Source'
  s.requires_arc = true
end