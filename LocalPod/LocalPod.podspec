Pod::Spec.new do |s|
  s.name         = "LocalPod"
  s.version      = "0.0.1"
  s.summary      = "A sweet little pod"

  s.homepage     = "http://this-is-not-important/LocalPod"

  s.license      = "MIT"

  s.author       = { "Allen Zeng" => "allenzeng@outlook.com" }

  s.source       = { :git => "http://this-is-not-important/LocalPod.git", :tag => "#{s.version}" }

  s.subspec 'Core' do |subspec|
    subspec.source_files = 'Source'
  end

  s.default_subspecs = 'Core'

  s.subspec 'TestMocks' do |subspec|
    subspec.source_files = 'Tests/Mocks/*.swift'
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/*.swift'
    test_spec.dependency 'LocalPod/TestMocks'
  end

end
