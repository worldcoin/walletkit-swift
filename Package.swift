// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.5

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
            dependencies: ["walletkit_FFI"],
            path: "Sources/WalletKit"
        ),
        .binaryTarget(
            name: "walletkit_FFI",
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/345398565.zip",
            checksum: "4623323ca1e496ed8b8821ef080e885c65889e3d3e7bb4e2088da71882b09ede"
        )
    ]
)
