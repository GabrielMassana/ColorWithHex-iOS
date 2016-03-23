Pod::Spec.new do |s|

  s.name         = "ColorWithHex"
  s.version      = "0.0.0"
  s.summary      = "Swift Extension to convert hexadecimal values into UIColor Objects."

  s.homepage     = "https://github.com/GabrielMassana"
  s.license      = { :type => 'MIT', :file => 'LICENSE.md'}
  s.author       = { "Gabriel Massana" => "gabrielmassana@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/GabrielMassana/ColorWithHex-iOS.git", :tag => s.version, :branch => "master"}
  
  s.source_files  = "ColorWithHex-iOS/**/*.{h,m}"

  s.requires_arc = true

end

