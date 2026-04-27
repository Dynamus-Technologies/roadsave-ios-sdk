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
            checksum: "03c1483cf6fea9d3d26b57a72e0e727bec79bc2e6eca6dc4f8df74e144d3872a"
        )
    ]
)
