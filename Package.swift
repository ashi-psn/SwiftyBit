// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyBit",
    products: [
        .library(
            name: "SwiftyBit",
            targets: ["SwiftyBit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftyBit",
            dependencies: []),
        .testTarget(
            name: "SwiftyBitTests",
            dependencies: ["SwiftyBit"]),
    ]
)
