// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.1

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/342860938.zip",
            checksum: "6061d6f27c732b61f3e5f4beecd532a2111a0cbe8bf2e4d1ccd2514e80908fde"
        )
    ]
)
