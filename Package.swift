// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxLocalAuthentication",
    platforms: [.iOS(.v9), ],
    products: [
        .library(name: "RxLocalAuthentication", targets: ["RxLocalAuthentication"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(name: "RxLocalAuthentication", dependencies: "RxSwift"),
        .testTarget(name: "RxLocalAuthenticationTests", dependencies: ["RxLocalAuthentication"]),
    ]
)
