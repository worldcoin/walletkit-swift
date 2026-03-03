// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.7.0

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
    targets: [
        .target(
            name: "WalletKit",
            dependencies: ["walletkit_coreFFI"],
            path: "Sources/WalletKit"
        ),
        .binaryTarget(
            name: "walletkit_coreFFI",
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/366287475.zip",
            checksum: "815fb6184a46771bd723130835d492b6b26e2ed92f4b7ac3af4cef0985b5729c"
        )
    ]
)
