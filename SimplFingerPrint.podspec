Pod::Spec.new do |s|
  s.name         = "SimplFingerPrint"
  s.version      = "1.0.7"
  s.summary      = "SimplFingerPrint iOS SDK."
  s.homepage     = "https://github.com/GetSimpl/simpl-fingerprint-sdk-ios"
  s.license = {:type => 'Commercial' , :file => 'License'}
  s.platform = :ios, '9.0'
  s.author       = { "Simpl" => "dev@getsimpl.com" }
  s.source = {:git => 'https://github.com/GetSimpl/simpl-fingerprint-sdk-ios.git',:tag => "v#{s.version}"}
  s.vendored_frameworks = 'SimplFingerPrint.framework'
  s.preserve_paths = 'SimplFingerPrint.framework'
end

