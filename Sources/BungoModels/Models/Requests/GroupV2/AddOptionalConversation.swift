// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: AddOptionalConversation.swift

import Foundation

public extension Requests.GroupV2 {
    /// Add a new optional conversation/chat channel. Requires admin permissions to the group.
    struct AddOptionalConversationRequest: BungoRequest {
        public typealias Response = Int64

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(groupId: Int64) {
                query = [:]
                path = [:]

                path["groupId"] = "\(groupId)"
            }
        }

        public let path = "/GroupV2/{groupId}/OptionalConversations/Add/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
