import Foundation

public extension BungoKit {
    struct Configuration {
        public var localManifestURL: URL

        public var clientID: Int
        public var clientSecret: String
        public var apiKey: String
        public var callbackScheme: String

        public init(localManifestURL: URL? = nil, clientID: Int, clientSecret: String, apiKey: String, callbackScheme: String) {
            if let localManifestURL {
                self.localManifestURL = localManifestURL
            } else {
                if #available(iOS 16.0, *) {
                    self.localManifestURL = .cachesDirectory
                } else {
                    self.localManifestURL = URL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!)
                }
            }

            self.clientID = clientID
            self.clientSecret = clientSecret
            self.apiKey = apiKey
            self.callbackScheme = callbackScheme
        }
    }
}
