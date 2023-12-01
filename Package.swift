// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "FirebaseAnalyticsProivder",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "FirebaseAnalyticsProivder",
			targets: ["FirebaseAnalyticsProivder"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreModule_Common_Analytics.git", .upToNextMajor(from: "1.3.0-beta")),
		.package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "8.0.0"))
	],
	targets: [
		.target(name: "FirebaseAnalyticsProivder",
				dependencies: [
					.product(name: "GXCoreModule_Common_Analytics", package: "GXCoreModule_Common_Analytics"),
					.product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
				])
	]
)
