// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.12.0

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/387205091.zip",
            checksum: "26e5d1f062bd60f6d827f171cbdcabc6dbb9e72303e2e2eebc86bdaa72b2324a"
        )
    ]
)
