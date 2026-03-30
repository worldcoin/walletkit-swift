// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.11.2

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/385147020.zip",
            checksum: "338a01f0c05c18f9ace45671c134854ce01fd7fdfc3c1d8442dd84f7044f97c0"
        )
    ]
)
