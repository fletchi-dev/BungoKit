// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: KickMember.swift

import Foundation

public extension Requests.GroupV2 {
    /// Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.
    struct KickMemberRequest: BungoRequest {
        public typealias Response = GroupsV2.GroupMemberLeaveResult

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

        public let path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Kick/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
