//
//  GXFirebaseRemoteConfigExtensionLibrary.swift
//

import GXCoreBL

@objc(GXFirebaseRemoteConfigExtensionLibrary)
public class GXFirebaseRemoteConfigExtensionLibrary: NSObject, GXExtensionLibraryProtocol {
	
	public func initializeExtensionLibrary(withContext context: GXExtensionLibraryContext) {
		FirebaseCommonInitialization.initializeIfNeeded()
		GXFirebaseRemoteConfigurationProvider.register()
	}
}
