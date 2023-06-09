// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetContentByTagAndType.swift

import Foundation

public extension Requests.Content {
    /// Returns the newest item that matches a given tag and Content Type.
    struct GetContentByTagAndTypeRequest: BungoRequest {
        public typealias Response = Content.ContentItemPublicContract

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(locale: String, tag: String, type: String, head: Bool? = nil) {
                query = [:]
                path = [:]

                if let head {
                    query["head"] = "\(head)"
                }

                path["locale"] = "\(locale)"
                path["tag"] = "\(tag)"
                path["type"] = "\(type)"
            }
        }

        public let path = "/Content/GetContentByTagAndType/{tag}/{type}/{locale}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
