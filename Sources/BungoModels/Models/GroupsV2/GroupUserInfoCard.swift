// This File was auto generated by BungoKitGen
//
// File: GroupUserInfoCard.swift

import Foundation

public extension GroupsV2 {
    struct GroupUserInfoCard: Codable {
        /// This will be the display name the clan server last saw the user as. If the account is an active cross save override, this will be the display name to use. Otherwise, this will match the displayName property.
        public var lastSeenDisplayName: String?
        /// The platform of the LastSeenDisplayName
        public var lastSeenDisplayNameType: BungieMembershipType?
        /// The list of Membership Types indicating the platforms on which this Membership can be used.
        ///  Not in Cross Save = its original membership type. Cross Save Primary = Any membership types it is overridding, and its original membership type Cross Save Overridden = Empty list
        public var applicableMembershipTypes: [BungieMembershipType]?
        /// The bungie global display name, if set.
        public var bungieGlobalDisplayName: String?
        /// The bungie global display name code, if set.
        public var bungieGlobalDisplayNameCode: Int16?
        /// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
        public var crossSaveOverride: BungieMembershipType?
        /// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
        public var displayName: String?
        /// URL the Icon if available.
        public var iconPath: String?
        /// If True, this is a public user membership.
        public var isPublic: Bool?
        /// Membership ID as they user is known in the Accounts service
        public var membershipId: Int64?
        /// Type of the membership. Not necessarily the native type.
        public var membershipType: BungieMembershipType?
        /// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
        public var supplementalDisplayName: String?

        public enum CodingKeys: String, CodingKey {
            case lastSeenDisplayName = "LastSeenDisplayName"
            case lastSeenDisplayNameType = "LastSeenDisplayNameType"
            case applicableMembershipTypes
            case bungieGlobalDisplayName
            case bungieGlobalDisplayNameCode
            case crossSaveOverride
            case displayName
            case iconPath
            case isPublic
            case membershipId
            case membershipType
            case supplementalDisplayName
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            lastSeenDisplayName = try? container.decode(String.self, forKey: CodingKeys.lastSeenDisplayName)
            lastSeenDisplayNameType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.lastSeenDisplayNameType)
            applicableMembershipTypes = try? container.decode([BungieMembershipType].self, forKey: CodingKeys.applicableMembershipTypes)
            bungieGlobalDisplayName = try? container.decode(String.self, forKey: CodingKeys.bungieGlobalDisplayName)
            bungieGlobalDisplayNameCode = try? container.decode(Int16.self, forKey: CodingKeys.bungieGlobalDisplayNameCode)
            crossSaveOverride = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.crossSaveOverride)
            displayName = try? container.decode(String.self, forKey: CodingKeys.displayName)
            iconPath = try? container.decode(String.self, forKey: CodingKeys.iconPath)
            isPublic = try? container.decode(Bool.self, forKey: CodingKeys.isPublic)
            let membershipId = try? container.decode(String.self, forKey: CodingKeys.membershipId)
            if let membershipId, let membershipIdInt = Int64(membershipId) {
                self.membershipId = membershipIdInt
            } else {
                self.membershipId = nil
            }
            membershipType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.membershipType)
            supplementalDisplayName = try? container.decode(String.self, forKey: CodingKeys.supplementalDisplayName)
        }
    }
}
