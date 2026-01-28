// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 0.3.6

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
            url: "https://api.github.com/repos/worldcoin/walletkit-swift/releases/assets/346890304.zip",
            checksum: "0912299a6b748cabae264abc4edfca61888dffc06c948c8d38490057acb1f893"
        )
    ]
)
