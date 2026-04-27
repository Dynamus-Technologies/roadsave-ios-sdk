// swift-tools-version: 5.9
import PackageDescription

// This file is auto-updated by the iOS SDK release workflow on each tag push.
// Do not edit manually.
let package = Package(
    name: "RoadSaveKit",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "RoadSaveKit", targets: ["RoadSaveKit"])
    ],
    targets: [
        .binaryTarget(
            name: "RoadSaveKit",
            url: "https://github.com/Dynamus-Technologies/roadsave-ios-sdk/releases/download/4.0.0-rc.1/RoadSaveKit-4.0.0-rc.1.xcframework.zip",
            checksum: "0e561deaa1daae315a7b0f0ce594c802b9d131dccf3cc4eb7258af718bef1f5f"
        )
    ]
)
