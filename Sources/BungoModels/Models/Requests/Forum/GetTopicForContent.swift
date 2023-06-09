// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetTopicForContent.swift

import Foundation

public extension Requests.Forum {
    /// Gets the post Id for the given content item's comments, if it exists.
    struct GetTopicForContentRequest: BungoRequest {
        public typealias Response = Int64

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(contentId: Int64) {
                query = [:]
                path = [:]

                path["contentId"] = "\(contentId)"
            }
        }

        public let path = "/Forum/GetTopicForContent/{contentId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
