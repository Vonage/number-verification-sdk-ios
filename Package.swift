// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "VonageClientSDKNumberVerification",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VonageClientSDKNumberVerification",
            targets: ["VonageClientSDKNumberVerification"]),
    ],
    targets: [
        .target(
            name: "VonageClientSDKNumberVerification"),
        .testTarget(
            name: "VonageClientSDKNumberVerificationTests",
            dependencies: ["VonageClientSDKNumberVerification"]),
    ]
)
