// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.11.3

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/386426604.zip",
            checksum: "af56c2a7c550bed695f60045e07184e09e3fa09a1f020d43e7b7fa9584c5f9af"
        )
    ]
)
