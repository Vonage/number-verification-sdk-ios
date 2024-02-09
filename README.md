# VonageClientSDKNumberVerification

[Vonage Number Verification]() uses a mobile phone's Subscriber Identity Module (SIM) to prove a user's identity. This SDK enables making a HTTP request over cellular even when on WiFi. This SDK is designed to be used as part of a Number Verification flow, please read the [guide]() for more information.

## Installation

### Swift Package Manager 

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/Vonage/number-verification-sdk-ios.git")
    ]
)
```

### Cocoapods

```ruby
pod 'VonageClientSDKNumberVerification'
```

## Compatibility

iOS 13+

## Usage

```swift
import VonageClientSDKNumberVerification

let client = VGNumberVerificationClient()
let params = VGNumberVerificationParameters(url: "http://www.vonage.com",
                                            headers: ["x-my-header": "My Value"],
                                            queryParameters: ["query-param" : "value"]
             )
        
let response = try await client.startNumberVerification(params: params)
```
