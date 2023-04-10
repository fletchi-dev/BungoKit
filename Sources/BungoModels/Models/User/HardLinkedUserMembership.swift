// This File was auto generated by BungoKitGen
//
// File: HardLinkedUserMembership.swift

import Foundation

public extension User {
    struct HardLinkedUserMembership: Codable {
        public var crossSaveOverriddenMembershipId: Int64?
        public var crossSaveOverriddenType: BungieMembershipType?
        public var membershipId: Int64?
        public var membershipType: BungieMembershipType?

        public enum CodingKeys: String, CodingKey {
            case crossSaveOverriddenMembershipId = "CrossSaveOverriddenMembershipId"
            case crossSaveOverriddenType = "CrossSaveOverriddenType"
            case membershipId
            case membershipType
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let crossSaveOverriddenMembershipId = try? container.decode(String.self, forKey: CodingKeys.crossSaveOverriddenMembershipId)
            if let crossSaveOverriddenMembershipId, let crossSaveOverriddenMembershipIdInt = Int64(crossSaveOverriddenMembershipId) {
                self.crossSaveOverriddenMembershipId = crossSaveOverriddenMembershipIdInt
            } else {
                self.crossSaveOverriddenMembershipId = nil
            }
            crossSaveOverriddenType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.crossSaveOverriddenType)
            let membershipId = try? container.decode(String.self, forKey: CodingKeys.membershipId)
            if let membershipId, let membershipIdInt = Int64(membershipId) {
                self.membershipId = membershipIdInt
            } else {
                self.membershipId = nil
            }
            membershipType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.membershipType)
        }
    }
}
