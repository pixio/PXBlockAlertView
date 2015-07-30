Pod::Spec.new do |s|
  s.name             = "PXBlockAlertView"
  s.version          = "0.1.4"
  s.summary          = "A class with shorthand class methods for displaying alerts."
  s.description      = <<-DESC
                       A set of class methods which allow you to present alerts with one or two buttons.

                       On iOS 7, it uses `UIAlertView`.  On iOS 8 it uses `UIAlertController`.
                       DESC
  s.homepage         = "https://github.com/pixio/PXBlockAlertView"
  s.license          = 'MIT'
  s.author           = { "Daniel Blakemore" => "DanBlakemore@gmail.com" }
  s.source = {
    :git => "https://github.com/pixio/PXBlockAlertView.git",
    :tag => s.version.to_s
  }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PXBlockAlertView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'UIAlertController-BetterConstructor'
  s.frameworks = 'UIKit'
end
