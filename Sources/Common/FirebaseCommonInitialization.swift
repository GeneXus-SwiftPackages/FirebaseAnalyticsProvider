//
//  GXFirebaseCommonExtensionLibrary.swift
//

#if canImport(FirebaseCore)
import FirebaseCore
#endif // canImport(FirebaseCore)

internal struct FirebaseCommonInitialization {
	private static let onceInitializer: Void = {
#if canImport(FirebaseCore)
		if FirebaseApp.app() == nil {
			FirebaseApp.configure()
		}
#endif // canImport(FirebaseCore)
	}()
	
	internal static func initializeIfNeeded() {
		Self.onceInitializer
	}
}
