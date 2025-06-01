// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// The package must be installed from github.com/worldcoin/walletkit-swift

import PackageDescription

let package = Package(
    name: "WalletKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "WalletKit",
            targets: ["WalletKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WalletKit",
            dependencies: ["walletkit_FFI"]
        ),
        .binaryTarget(name: "walletkit_FFI", path: "WalletKit.xcframework")
    ]
)
// Release version: 0.0.21
