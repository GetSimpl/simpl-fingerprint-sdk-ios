Pod::Spec.new do |s|
  s.name         = "SimplFingerPrint"
  s.version      = "1.0.10"
  s.summary      = "SimplFingerPrint iOS SDK."
  s.homepage     = "https://github.com/GetSimpl/simpl-fingerprint-sdk-ios"
  s.license = {:type => 'Commercial' , :file => 'License'}
  s.platform = :ios, '11.0'
  s.author       = { "Simpl" => "dev@getsimpl.com" }
  s.source = {:git => 'https://github.com/GetSimpl/simpl-fingerprint-sdk-ios.git',:tag => "v#{s.version}"}
  s.vendored_frameworks = 'SimplFingerPrint.xcframework'
  s.preserve_paths = 'SimplFingerPrint.xcframework'
end

