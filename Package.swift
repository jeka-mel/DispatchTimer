// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "DispatchTimer"

let package = Package(
    name: packageName,
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: packageName,
            targets: ["DispatchTimer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: packageName,
            dependencies: [
            ]
        )
    ]
)
