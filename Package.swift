// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.9

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/347883418.zip",
            checksum: "d70d9e6fd50574644db2ff728a63b70d323472d68df55e3f25310ad3468ad08f"
        )
    ]
)
