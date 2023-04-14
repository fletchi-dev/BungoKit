import BungoAuth
import BungoClient
import BungoManifest
import BungoModels
import Foundation

public final class BungoKit {
    let configuration: Configuration

    let manifestFileManager: ManifestFileManager
    let auth: BungoAuth
    let api: BungoClient
    var manifests: [BungoLocale: Manifest] = [:]

    public var token: BungoTokenResponse? {
        didSet {
            // TODO: This should not be BungoKit's responsibility, but for now it is.
            persistToken()
            api.token = token?.accessToken ?? ""
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

        // TODO: This should not be BungoKit's responsibility, but for now it is.
        restoreToken()
    }

    // TODO: This should not be BungoKit's responsibility, but for now it is.
    private func persistToken() {
        if let token {
            let data = try! JSONEncoder().encode(token)
            let string = String(data: data, encoding: .utf8)!

            UserDefaults.standard.set(string, forKey: "token")
        } else {
            UserDefaults.standard.set(nil, forKey: "token")
        }
    }

    // TODO: This should not be BungoKit's responsibility, but for now it is.
    private func restoreToken() {
        guard let json = UserDefaults.standard.string(forKey: "token")?.data(using: .utf8),
              let token = try? JSONDecoder().decode(BungoTokenResponse.self, from: json)
        else {
            return
        }

        self.token = token
        api.token = token.accessToken
    }
}
