// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyProfileComponent.swift

import Foundation

public extension Destiny.Entities.Profiles {
    /// The most essential summary information about a Profile (in Destiny 1, we called these "Accounts").
    struct DestinyProfileComponent: Codable {
        /// If populated, this is a reference to the event card that is currently active.
        public var activeEventCardHash: UInt32?

        /// A list of the character IDs, for further querying on your part.
        public var characterIds: [Int64]?

        /// The 'current' Guardian Rank value, which starts at rank 1.
        public var currentGuardianRank: Int32?

        /// If populated, this is a reference to the season that is currently active.
        public var currentSeasonHash: UInt32?

        /// If populated, this is the reward power cap for the current season.
        public var currentSeasonRewardPowerCap: Int32?

        /// The last time the user played with any character on this Profile.
        public var dateLastPlayed: Date?

        /// A list of hashes for event cards that a profile owns. Unlike most values in versionsOwned, these stay with the profile across all platforms.
        public var eventCardHashesOwned: [UInt32]?

        /// The 'lifetime highest' Guardian Rank value, which starts at rank 1.
        public var lifetimeHighestGuardianRank: Int32?

        /// A list of seasons that this profile owns. Unlike versionsOwned, these stay with the profile across Platforms, and thus will be valid.
        ///  It turns out that Stadia Pro subscriptions will give access to seasons but only while playing on Stadia and with an active subscription. So some users (users who have Stadia Pro but choose to play on some other platform) won't see these as available: it will be whatever seasons are available for the platform on which they last played.
        public var seasonHashes: [UInt32]?

        /// If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information.
        public var userInfo: User.UserInfoCard?

        /// If you want to know what expansions they own, this will contain that data.
        ///  IMPORTANT: This field may not return the data you're interested in for Cross-Saved users. It returns the last ownership data we saw for this account - which is to say, what they've purchased on the platform on which they last played, which now could be a different platform.
        ///  If you don't care about per-platform ownership and only care about whatever platform it seems they are playing on most recently, then this should be "good enough." Otherwise, this should be considered deprecated. We do not have a good alternative to provide at this time with platform specific ownership data for DLC.
        public var versionsOwned: Destiny.DestinyGameVersions?

        public enum CodingKeys: String, CodingKey {
            case activeEventCardHash
            case characterIds
            case currentGuardianRank
            case currentSeasonHash
            case currentSeasonRewardPowerCap
            case dateLastPlayed
            case eventCardHashesOwned
            case lifetimeHighestGuardianRank
            case seasonHashes
            case userInfo
            case versionsOwned
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activeEventCardHash = try? container.decode(UInt32.self, forKey: CodingKeys.activeEventCardHash)
            characterIds = try? container.decode([Int64].self, forKey: CodingKeys.characterIds)
            currentGuardianRank = try? container.decode(Int32.self, forKey: CodingKeys.currentGuardianRank)
            currentSeasonHash = try? container.decode(UInt32.self, forKey: CodingKeys.currentSeasonHash)
            currentSeasonRewardPowerCap = try? container.decode(Int32.self, forKey: CodingKeys.currentSeasonRewardPowerCap)
            dateLastPlayed = try? container.decode(Date.self, forKey: CodingKeys.dateLastPlayed)
            eventCardHashesOwned = try? container.decode([UInt32].self, forKey: CodingKeys.eventCardHashesOwned)
            lifetimeHighestGuardianRank = try? container.decode(Int32.self, forKey: CodingKeys.lifetimeHighestGuardianRank)
            seasonHashes = try? container.decode([UInt32].self, forKey: CodingKeys.seasonHashes)
            userInfo = try? container.decode(User.UserInfoCard.self, forKey: CodingKeys.userInfo)
            versionsOwned = try? container.decode(Destiny.DestinyGameVersions.self, forKey: CodingKeys.versionsOwned)
        }
    }
}
