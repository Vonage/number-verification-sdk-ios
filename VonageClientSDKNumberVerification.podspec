Pod::Spec.new do |spec|
    spec.name         = "VonageClientSDKNumberVerification"
    spec.version      = "1.0.0"
    spec.summary      = "SDK for Vonage Number Verification"
    spec.description  = <<-DESC
    Vonage Number Verification uses a mobile phone's Subscriber Identity Module (SIM) to prove a user's identity. This SDK enables making a HTTP request over cellular even when on WiFi.
    DESC
    spec.homepage     = "https://github.com/Vonage/number-verification-sdk-ios"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author             = { "author" => "devrel@vonage.com" }
    spec.documentation_url = ""
    spec.platforms = { :ios => "13.0" }
    spec.swift_version = "5.9"
    spec.source       = { :git => "https://github.com/Vonage/number-verification-sdk-ios.git", :tag => "#{spec.version}" }
    spec.source_files  = "Sources/VonageClientSDKNumberVerification/**/*.swift"
    spec.xcconfig = { "SWIFT_VERSION" => "5.9" }
end
