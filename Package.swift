// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.3

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/343526169.zip",
            checksum: "b3d3c77a2f873af1fd08aac4f7b339c08dcba8325f7bf437782ff9155695d504"
        )
    ]
)
