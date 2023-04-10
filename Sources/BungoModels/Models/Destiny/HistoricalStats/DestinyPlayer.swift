// This File was auto generated by BungoKitGen
//
// File: DestinyPlayer.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyPlayer: Codable {
        /// Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account.
        public var bungieNetUserInfo: User.UserInfoCard?
        /// Class of the character if applicable and available.
        public var characterClass: String?
        /// Level of the character if available. Zero if it is not available.
        public var characterLevel: Int32?
        /// Current clan name for the player. This value may be null or an empty string if the user does not have a clan.
        public var clanName: String?
        /// Current clan tag for the player. This value may be null or an empty string if the user does not have a clan.
        public var clanTag: String?
        public var classHash: UInt32?
        /// Details about the player as they are known in game (platform display name, Destiny emblem)
        public var destinyUserInfo: User.UserInfoCard?
        /// If we know the emblem's hash, this can be used to look up the player's emblem at the time of a match when receiving PGCR data, or otherwise their currently equipped emblem (if we are able to obtain it).
        public var emblemHash: UInt32?
        public var genderHash: UInt32?
        /// Light Level of the character if available. Zero if it is not available.
        public var lightLevel: Int32?
        public var raceHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case bungieNetUserInfo
            case characterClass
            case characterLevel
            case clanName
            case clanTag
            case classHash
            case destinyUserInfo
            case emblemHash
            case genderHash
            case lightLevel
            case raceHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            bungieNetUserInfo = try? container.decode(User.UserInfoCard.self, forKey: CodingKeys.bungieNetUserInfo)
            characterClass = try? container.decode(String.self, forKey: CodingKeys.characterClass)
            characterLevel = try? container.decode(Int32.self, forKey: CodingKeys.characterLevel)
            clanName = try? container.decode(String.self, forKey: CodingKeys.clanName)
            clanTag = try? container.decode(String.self, forKey: CodingKeys.clanTag)
            classHash = try? container.decode(UInt32.self, forKey: CodingKeys.classHash)
            destinyUserInfo = try? container.decode(User.UserInfoCard.self, forKey: CodingKeys.destinyUserInfo)
            emblemHash = try? container.decode(UInt32.self, forKey: CodingKeys.emblemHash)
            genderHash = try? container.decode(UInt32.self, forKey: CodingKeys.genderHash)
            lightLevel = try? container.decode(Int32.self, forKey: CodingKeys.lightLevel)
            raceHash = try? container.decode(UInt32.self, forKey: CodingKeys.raceHash)
        }
    }
}
