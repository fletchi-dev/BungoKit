// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetPotentialGroupsForMember.swift

import Foundation

public extension Requests.GroupV2 {
    /// Get information about the groups that a given member has applied to or been invited to.
    struct GetPotentialGroupsForMemberRequest: BungoRequest {
        public typealias Response = GroupsV2.GroupPotentialMembershipSearchResponse

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(filter: GroupsV2.GroupPotentialMemberStatus, groupType: GroupsV2.GroupType, membershipId: Int64, membershipType: BungieMembershipType) {
                query = [:]
                path = [:]

                path["filter"] = "\(filter.rawValue)"
                path["groupType"] = "\(groupType.rawValue)"
                path["membershipId"] = "\(membershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/GroupV2/User/Potential/{membershipType}/{membershipId}/{filter}/{groupType}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
