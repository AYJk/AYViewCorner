Pod::Spec.new do |s|
  s.name         = "AYViewCorner"
  s.version      = "1.0.0"
  s.summary      = "photo browser for ios."
  s.homepage     = "https://github.com/hujewelz/HUPhotoBrowser"
  s.license      = "MIT"
  s.author             = { "Jewelz Hu" => "hujewelz@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/hujewelz/HUPhotoBrowser.git", :tag => "0.0.2" }
  s.source_files  = "HUPhotoBrowser", "HUPhotoBrowser/**/*.{h,m}"
   s.framework  = "UIKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"
