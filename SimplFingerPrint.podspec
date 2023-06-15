Pod::Spec.new do |s|
  s.name         = "SimplFingerPrint"
  s.version      = "1.0.8"
  s.summary      = "SimplFingerPrint iOS SDK."
  s.homepage     = "https://github.com/GetSimpl/simpl-fingerprint-sdk-ios"
  s.license = {:type => 'Commercial' , :file => 'License'}
  s.platform = :ios, '11.0'
  s.author       = { "Simpl" => "dev@getsimpl.com" }
  s.source = {:git => 'https://github.com/GetSimpl/simpl-fingerprint-sdk-ios.git',:tag => "v#{s.version}"}
  s.vendored_frameworks = 'SimplFingerPrint.framework'
  s.preserve_paths = 'SimplFingerPrint.framework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

