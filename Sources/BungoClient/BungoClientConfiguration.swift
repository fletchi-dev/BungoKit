import Foundation

public struct BungoClientConfiguration {
    public var clientID: Int
    public var clientSecret: String
    public var apiKey: String
    public var callbackScheme: String

    public init(clientID: Int, clientSecret: String, apiKey: String, callbackScheme: String) {
        self.clientID = clientID
        self.clientSecret = clientSecret
        self.apiKey = apiKey
        self.callbackScheme = callbackScheme
    }
}
