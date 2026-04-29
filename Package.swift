// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.16.0

import PackageDescription

let package = Package(
    name: "WalletKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WalletKit",
            targets: ["WalletKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.7.0"))
    ],
    targets: [
        .target(
            name: "WalletKit",
            dependencies: [
                "walletkit_coreFFI",
                .product(name: "BigInt", package: "BigInt")
            ],
            path: "Sources/WalletKit"
        ),
        .binaryTarget(
            name: "walletkit_coreFFI",
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/408463080.zip",
            checksum: "1f641212351510f039afd4d766b8faccdf0398f2a6dbec66169cf2e89e3414e4"
        )
    ]
)
