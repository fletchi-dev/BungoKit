// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: UserMembership.swift

import Foundation

public extension User {
    /// Very basic info about a user as returned by the Account server.
    struct UserMembership: Codable {
        /// The bungie global display name, if set.
        public var bungieGlobalDisplayName: String?

        /// The bungie global display name code, if set.
        public var bungieGlobalDisplayNameCode: Int16?

        /// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
        public var displayName: String?

        /// Membership ID as they user is known in the Accounts service
        public var membershipId: Int64?

        /// Type of the membership. Not necessarily the native type.
        public var membershipType: BungieMembershipType?

        public enum CodingKeys: String, CodingKey {
            case bungieGlobalDisplayName
            case bungieGlobalDisplayNameCode
            case displayName
            case membershipId
            case membershipType
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            bungieGlobalDisplayName = try? container.decode(String.self, forKey: CodingKeys.bungieGlobalDisplayName)
            bungieGlobalDisplayNameCode = try? container.decode(Int16.self, forKey: CodingKeys.bungieGlobalDisplayNameCode)
            displayName = try? container.decode(String.self, forKey: CodingKeys.displayName)
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
