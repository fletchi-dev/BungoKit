// This File was auto generated by BungoKitGen
//
// File: EditFounderOptions.swift

import Foundation

public extension Requests.GroupV2 {
    /// Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.
    struct EditFounderOptionsRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(groupId: Int64) {
                query = [:]
                path = [:]

                path["groupId"] = "\(groupId)"
            }
        }

        public let path = "/GroupV2/{groupId}/EditFounderOptions/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
