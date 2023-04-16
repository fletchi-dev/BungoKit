import BungoAuth
import BungoClient
import BungoManifest
import BungoModels
import Foundation
#if canImport(Combine)
import Combine
#endif

public final class BungoKit {
    let configuration: Configuration

    let manifestFileManager: ManifestFileManager
    let auth: BungoAuth
    let api: BungoClient
    var manifests: [BungoLocale: Manifest] = [:]
    var manifestResponseCache: ManifestResponseCache?
	
	#if canImport(Combine)
	private let tokenSubject: CurrentValueSubject<BungoTokenResponse?, Never> = CurrentValueSubject(nil)
	
	public var tokenPublisher: AnyPublisher<BungoTokenResponse?, Never> {
		tokenSubject.eraseToAnyPublisher()
	}
	#endif

	public var token: BungoTokenResponse? {
        didSet {
            api.token = token?.accessToken ?? ""
			#if canImport(Combine)
			tokenSubject.value = token
			#endif
        }
    }

    public var locale: BungoLocale = .en

    public init(configuration: Configuration) {
        self.configuration = configuration
        manifestFileManager = ManifestFileManager(baseURL: configuration.localManifestURL)

        api = BungoClient(configuration: .init(
            clientID: configuration.clientID,
            clientSecret: configuration.clientSecret,
            apiKey: configuration.apiKey,
            callbackScheme: configuration.callbackScheme
        ))

        auth = BungoAuth(
            clientID: configuration.clientID,
            clientSecret: configuration.clientSecret,
            callbackScheme: configuration.callbackScheme,
            urlSession: api.urlSession
        )
    }
}
