//
//  GXFirebaseCrashlyticsExtensionLibrary.swift
//

import GXCoreBL

@objc(GXFirebaseCrashlyticsExtensionLibrary)
public class GXFirebaseCrashlyticsExtensionLibrary: NSObject, GXExtensionLibraryProtocol {
	
	public func initializeExtensionLibrary(withContext context: GXExtensionLibraryContext) {
		FirebaseCommonInitialization.initializeIfNeeded()
		GXCoreBLServices.registerCrashAnalyticsService(GXFirebaseCrashAnalyticsService.shared)
	}
}
