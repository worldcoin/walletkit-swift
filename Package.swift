// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.2

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/343420665.zip",
            checksum: "aa80ce2874f395fc90c8b0a5442ec9b39ade305de32d8afea35706c12e097421"
        )
    ]
)
