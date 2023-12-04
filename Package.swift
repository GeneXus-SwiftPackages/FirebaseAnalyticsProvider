// swift-tools-version: 5.7
import PackageDescription

let GX_FC_LAST_VERSION = Version("1.3.0-beta")

let package = Package(
	name: "FirebaseProivders",
	platforms: [.iOS(.v11), .macCatalyst(.v13), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v7)],
	products: [
		.library(name: "FirebaseAnalyticsProivder", targets: ["FirebaseAnalyticsProivder"]),
		.library(name: "FirebaseCrashlyticsProvider", targets: ["FirebaseCrashlyticsProvider"]),
		.library(name: "FirebaseRemoteConfigurationProivder", targets: ["FirebaseRemoteConfigurationProvider"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", .upToNextMajor(from: GX_FC_LAST_VERSION)),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreModule_Common_Analytics.git", .upToNextMajor(from: GX_FC_LAST_VERSION)),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreModule_SD_RemoteConfig.git", .upToNextMajor(from: GX_FC_LAST_VERSION)),
		.package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "8.0.0"))
	],
	targets: [
		.target(name: "FirebaseAnalyticsProivder",
				dependencies: [
					.product(name: "GXCoreModule_Common_Analytics", package: "GXCoreModule_Common_Analytics"),
					.product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
				],
				path: "Sources/AnalyticsProivder"),
		.target(name: "FirebaseCrashlyticsProvider",
				dependencies: [
					.product(name: "GXCoreBL", package: "GXCoreBL"),
					.product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
				],
				path: "Sources/CrashlyticsProvider"),
		.target(name: "FirebaseRemoteConfigurationProvider",
				dependencies: [
					.product(name: "GXCoreModule_SD_RemoteConfig", package: "GXCoreModule_SD_RemoteConfig"),
					.product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk")
				],
				path: "Sources/RemoteConfigurationProvider")
	]
)
