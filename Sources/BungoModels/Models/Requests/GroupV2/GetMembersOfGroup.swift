// This File was auto generated by BungoKitGen
//
// File: GetMembersOfGroup.swift

import Foundation

public extension Requests.GroupV2 {
    /// Get the list of members in a given group.
    struct GetMembersOfGroupRequest: BungoRequest {
        public typealias Response = SearchResultOfGroupMember

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(currentpage: Int32, groupId: Int64, memberType: GroupsV2.RuntimeGroupMemberType? = nil, nameSearch: String? = nil) {
                query = [:]
                path = [:]

                if let memberType {
                    query["memberType"] = "\(memberType.rawValue)"
                }
                if let nameSearch {
                    query["nameSearch"] = "\(nameSearch)"
                }

                path["currentpage"] = "\(currentpage)"
                path["groupId"] = "\(groupId)"
            }
        }

        public let path = "/GroupV2/{groupId}/Members/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
