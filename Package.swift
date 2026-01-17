// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.2.3

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
            url: "https://github.com/worldcoin/walletkit-swift/releases/download/untagged-23cd7966397b7089d9e1/WalletKit.xcframework.zip",
            checksum: "6535b39ef6b0cbb0b7cec70244ec36cfd855107829f56a9a874d6e8ddf57c0e8"
        )
    ]
)
