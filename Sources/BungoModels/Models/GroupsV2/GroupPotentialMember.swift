// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GroupPotentialMember.swift

import Foundation

public extension GroupsV2 {
    struct GroupPotentialMember: Codable {
        public var bungieNetUserInfo: User.UserInfoCard?

        public var destinyUserInfo: GroupsV2.GroupUserInfoCard?

        public var groupId: Int64?

        public var joinDate: Date?

        public var potentialStatus: GroupsV2.GroupPotentialMemberStatus?

        public enum CodingKeys: String, CodingKey {
            case bungieNetUserInfo
            case destinyUserInfo
            case groupId
            case joinDate
            case potentialStatus
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            bungieNetUserInfo = try? container.decode(User.UserInfoCard.self, forKey: CodingKeys.bungieNetUserInfo)
            destinyUserInfo = try? container.decode(GroupsV2.GroupUserInfoCard.self, forKey: CodingKeys.destinyUserInfo)
            let groupId = try? container.decode(String.self, forKey: CodingKeys.groupId)
            if let groupId, let groupIdInt = Int64(groupId) {
                self.groupId = groupIdInt
            } else {
                self.groupId = nil
            }
            joinDate = try? container.decode(Date.self, forKey: CodingKeys.joinDate)
            potentialStatus = try? container.decode(GroupsV2.GroupPotentialMemberStatus.self, forKey: CodingKeys.potentialStatus)
        }
    }
}
