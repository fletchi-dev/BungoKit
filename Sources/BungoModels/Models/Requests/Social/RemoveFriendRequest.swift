// This File was auto generated by BungoKitGen
//
// File: RemoveFriendRequest.swift

import Foundation

public extension Requests.Social {
    /// Remove a friend relationship with the target user. The user must be on your outgoing request friend list, though no error will occur if they are not.
    struct RemoveFriendRequestRequest: BungoRequest {
        public typealias Response = Bool

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(membershipId: String) {
                query = [:]
                path = [:]

                path["membershipId"] = "\(membershipId)"
            }
        }

        public let path = "/Social/Friends/Requests/Remove/{membershipId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
