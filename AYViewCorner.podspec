Pod::Spec.new do |s|
  s.name         = "AYViewCorner"
  s.version      = "1.0.0"
  s.summary      = "set round corner without offScreen rendered"
  s.homepage     = "https://github.com/AYJk/AYViewCorner"
  s.license      = "MIT"
  s.author             = { "Andy" => "andy5759520@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/AYJk/AYViewCorner.git", :tag => "1.0.0" }
  s.source_files = "AYViewCorner/AYViewCorner/*.{h,m}"
  s.requires_arc = true

end