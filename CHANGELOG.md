# Release Notes — RoadSaveKit iOS SDK

Public-facing release notes for the RoadSaveKit iOS SDK. Versioned per [Semantic Versioning](https://semver.org/) starting from `4.0.0`. Breaking changes are prefixed `BREAKING:`.

For installation instructions see [docs.roadsave.co.za/ios/](https://docs.roadsave.co.za/ios/).

---

## [Unreleased]

### Fixed
- The Step 1 install URL in the Getting Started article was incorrect and would cause Xcode to fail when adding the package. The URL now correctly points to `https://github.com/Dynamus-Technologies/roadsave-ios-sdk`.
- Cross-article links in the Getting Started, Privacy Manifest, and Downloads pages were producing 404s on the documentation site. All "Next Steps" and "See also" links now resolve correctly.

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
