//
//  GXFirebaseCommonExtensionLibrary.swift
//

import FirebaseCore

internal struct FirebaseCommonInitialization {
	private static let onceInitializer: Void = {
		if FirebaseApp.app() == nil {
			FirebaseApp.configure()
		}
	}()
	
	internal static func initializeIfNeeded() {
		Self.onceInitializer
	}
}
