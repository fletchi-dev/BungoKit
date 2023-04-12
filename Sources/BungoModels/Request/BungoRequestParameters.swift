import Foundation

public protocol BungoRequestParameters {
    var query: [String: String] { get }
    var path: [String: String] { get }
}
