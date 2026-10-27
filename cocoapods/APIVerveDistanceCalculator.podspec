Pod::Spec.new do |s|
  s.name             = 'APIVerveDistanceCalculator'
  s.version          = '1.2.3'
  s.summary          = 'Distance Calculator computes the distance between two coordinate pairs in miles and kilometers.'
  s.description      = <<-'DESC'
Distance Calculator computes the distance between two coordinate pairs in miles and kilometers. Supply two latitude and longitude points to receive distances and resolved city and state names for both locations.

This iOS/macOS SDK provides a convenient way to access the Distance Calculator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/distancecalculator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/distancecalculator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDistanceCalculator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
