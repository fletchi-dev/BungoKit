// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetContentById.swift

import Foundation

public extension Requests.Content {
    /// Returns a content item referenced by id
    struct GetContentByIdRequest: BungoRequest {
        public typealias Response = Content.ContentItemPublicContract

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(id: Int64, locale: String, head: Bool? = nil) {
                query = [:]
                path = [:]

                if let head {
                    query["head"] = "\(head)"
                }

                path["id"] = "\(id)"
                path["locale"] = "\(locale)"
            }
        }

        public let path = "/Content/GetContentById/{id}/{locale}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
