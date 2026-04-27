# Release Notes — RoadSaveKit iOS SDK

Public-facing release notes for the RoadSaveKit iOS SDK. Versioned per [Semantic Versioning](https://semver.org/) starting from `4.0.0`. Breaking changes are prefixed `BREAKING:`.

For installation instructions see [docs.roadsave.co.za/ios/](https://docs.roadsave.co.za/ios/).

---

## [Unreleased]

### Fixed
- The Step 1 install URL in the Getting Started article was incorrect and would cause Xcode to fail when adding the package. The URL now correctly points to `https://github.com/Dynamus-Technologies/roadsave-ios-sdk`.
- Cross-article links in the Getting Started, Privacy Manifest, and Downloads pages were producing 404s on the documentation site. All "Next Steps" and "See also" links now resolve correctly.
- The API Reference page on the documentation site was blank. Asset paths are now version-scoped to match the deployed URL structure.
- "Related" section links and "Next Steps" links in the Integration Guide now render as clickable links instead of blank bullets.

### Changed
- Integration Guide content reorganised for clarity — internal implementation details removed from the Configuring the SDK, Trip Detection, and Crash Detection articles.
- Downloads page now links directly to the [GitHub Releases page](https://github.com/Dynamus-Technologies/roadsave-ios-sdk/releases) and lists the release artefacts up front.

---

## [4.0.0-rc.1] — 2026-04-27

First public pre-release of RoadSaveKit 4.0.0.

### Added
- Swift Package Manager support via `https://github.com/Dynamus-Technologies/roadsave-ios-sdk` (binary distribution; no source compilation required).
- Direct XCFramework download from the GitHub Releases page with SHA-256 checksum verification.
- DEBUG-only `RoadSaveSDK.mockBridge` for injecting scripted GPS and accelerometer data during integration testing. Excluded from release builds.
- `RoadSaveSDK.setAutoTripDetection(_:)` runtime toggle to pause and resume automatic trip detection without dismantling the SDK.

### Changed
- Minimum iOS version: 17.0.
- `RoadSaveConfiguration.shouldAutoDetectTrips` now correctly controls whether automatic trip detection starts; previously the flag was a no-op at init time.

### Removed
- BREAKING: Manual trip control (`startTrip()` / `stopTrip()`) is no longer in the public API. Trips are managed exclusively through auto-detection — set `shouldAutoDetectTrips: true` on `RoadSaveConfiguration` to enable.

### Migrating from 3.x

See the full migration guide at [docs.roadsave.co.za/ios/4.0.0-rc.1/integration-guide/](https://docs.roadsave.co.za/ios/4.0.0-rc.1/integration-guide/).

4.0 is a complete rewrite in Swift. Update your `import` statement first:

```swift
// Before (3.x)
import CrashDetechKit

// After (4.0)
import RoadSaveKit
```

Quick-reference type rename table:

| 3.x | 4.0 |
|---|---|
| `CrashDetechSDK` | `RoadSaveSDK` |
| `CrashDetechConfiguration` | `RoadSaveConfiguration` |
| `CrashDetechDelegate` | `RoadSaveDelegate` |
| `CrashDetechError` | `RoadSaveError` |

`CrashInfo`, `TripInfo`, `TripStartInfo`, `CrashConfidence`, `CrashDetectionMode`, and `FalsePositiveReason` are **unchanged**.

Key breaking changes:
- `configure(withApplicationID:clientUserID:)` is replaced by `configure(with:)`, which is `async throws`. Call it from a `Task` at app startup.
- Delegate callbacks now receive typed Swift structs instead of `NSDictionary`.
- `crashDetected(_:)` fires **after** the server evaluation round-trip completes. Check `crashInfo.confidence` for the outcome. If the server returns "None", no callback fires.
- CocoaPods is no longer supported. Add the package via Swift Package Manager from `https://github.com/Dynamus-Technologies/roadsave-ios-sdk`.
