// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/769733660.zip",
            checksum: "f4c5ef47cfe10c0b33d1beaceda91b55cccdb62508b901fa93ef0209af633d14"
        )
    ]
)
// Release version: 0.31.0
