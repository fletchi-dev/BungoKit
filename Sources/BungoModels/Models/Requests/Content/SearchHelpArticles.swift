// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: SearchHelpArticles.swift

import AnyCodable
import Foundation
public extension Requests.Content {
    /// Search for Help Articles.
    struct SearchHelpArticlesRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(searchtext: String, size: String) {
                query = [:]
                path = [:]

                path["searchtext"] = "\(searchtext)"
                path["size"] = "\(size)"
            }
        }

        public let path = "/Content/SearchHelpArticles/{searchtext}/{size}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
