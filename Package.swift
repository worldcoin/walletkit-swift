// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.5.3

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/355442891.zip",
            checksum: "b02bf4beb5103cad5add6a5358f1577ed690d1ae36087f7f85ef6c2679992067"
        )
    ]
)
