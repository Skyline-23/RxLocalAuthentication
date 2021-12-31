// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxLocalAuthentication",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RxLocalAuthentication",
            targets: ["RxLocalAuthentication"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RxLocalAuthentication",
            dependencies: []),
        .testTarget(
            name: "RxLocalAuthenticationTests",
            dependencies: ["RxLocalAuthentication"]),
    ]
)
