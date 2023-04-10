// This File was auto generated by BungoKitGen
//
// File: BanMember.swift

import Foundation

public extension Requests.GroupV2 {
    /// Bans the requested member from the requested group for the specified period of time.
    struct BanMemberRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(groupId: Int64, membershipId: Int64, membershipType: BungieMembershipType) {
                query = [:]
                path = [:]

                path["groupId"] = "\(groupId)"
                path["membershipId"] = "\(membershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Ban/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
