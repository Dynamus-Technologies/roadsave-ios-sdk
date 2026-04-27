# RoadSaveKit — iOS SDK

> **Crash detection. Trip detection. Activity recognition.**  
> A Swift Package for RoadSave-powered iOS applications.

---

## Requirements

| Requirement | Minimum |
|---|---|
| iOS | 17.0 |
| Swift | 5.9 |
| Xcode | 16.0 |

## Installation

### Swift Package Manager (recommended)

In Xcode: **File → Add Package Dependencies**, paste this URL:

```
https://github.com/Dynamus-Technologies/roadsave-ios-sdk
```

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Dynamus-Technologies/roadsave-ios-sdk", from: "4.0.0")
]
```

Then add `RoadSaveKit` to your target:

```swift
.target(
    name: "MyApp",
    dependencies: ["RoadSaveKit"]
)
```

### XCFramework (manual install)

Download `RoadSaveKit-<version>.zip` from the [Releases](../../releases) page,
verify the checksum, and drag `RoadSaveKit.xcframework` into your Xcode project's
**Frameworks, Libraries, and Embedded Content** section.

## Documentation

Full documentation, integration guide, and API reference:

**[docs.roadsave.co.za/ios/](https://docs.roadsave.co.za/ios/)**

## License

Proprietary — © CrashDetech (Pty) Ltd t/a RoadSave. All rights reserved.  
See [LICENSE](LICENSE) for terms.
