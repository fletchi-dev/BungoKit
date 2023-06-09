// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GroupApplicationListRequest.swift

import Foundation

public extension GroupsV2 {
    struct GroupApplicationListRequest: Codable {
        public var memberships: [User.UserMembership]?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case memberships
            case message
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            memberships = try? container.decode([User.UserMembership].self, forKey: CodingKeys.memberships)
            message = try? container.decode(String.self, forKey: CodingKeys.message)
        }
    }
}
