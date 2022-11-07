Pod::Spec.new do |spec|
  spec.name         = "TestFW2"
  spec.version      = "1.1.1"
  spec.summary      = "Framework to use for easy installation for the other apps"
  spec.description  = "This is the test Framework for the easy install for us, And We will run this with out giving the path from the loacl machine"

  spec.homepage     = "https://in-telligent.com/"
  spec.license      = "MIT"
  spec.author       = { "Manohar1990" => "p.manohar6816@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/Manohar1990/ManoharTestPublic.git", :tag => "#{spec.version}" }
  # spec.source_files  = "ManoharFrameWork/**/*.swift"
  spec.swift_versions  = "5.0"
  spec.framework  = "Foundation"
  # spec.static_framework = true
  # spec.vendored_frameworks = "Users/manoharpitla/Desktop/MyFrameworkGit/int-openapi-framework-ios-test/ManoharFrameWork/ManoharOpenAPI.xcframework"
  # spec.exclude_files = "ManoharFrameWork/PrivateFileClass/**"
  spec.requires_arc = true
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # spec.dependency "Alamofire"
  # spec.dependency "ActiveLabel"

    spec.subspec "TestFW2" do |spec|
  spec.source_files  = "TestFW2.xcframework"
    # spec.vendored_frameworks = "TestFW2.framework"
  end

end
