// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: IndividualGroupInviteCancel.swift

import Foundation

public extension Requests.GroupV2 {
    /// Cancels a pending invitation to join a group.
    struct IndividualGroupInviteCancelRequest: BungoRequest {
        public typealias Response = GroupsV2.GroupApplicationResponse

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

        public let path = "/GroupV2/{groupId}/Members/IndividualInviteCancel/{membershipType}/{membershipId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
