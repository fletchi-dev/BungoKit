// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPublicActivityStatus.swift

import Foundation

public extension Destiny.Activities {
    /// Represents the public-facing status of an activity: any data about what is currently active in the Activity, regardless of an individual character's progress in it.
    struct DestinyPublicActivityStatus: Codable {
        /// Active Challenges for the activity, if any - represented as hashes for DestinyObjectiveDefinitions.
        public var challengeObjectiveHashes: [UInt32]?

        /// The active modifiers on this activity, if any - represented as hashes for DestinyActivityModifierDefinitions.
        public var modifierHashes: [UInt32]?

        /// If the activity itself provides any specific "mock" rewards, this will be the items and their quantity.
        /// Why "mock", you ask? Because these are the rewards as they are represented in the tooltip of the Activity.
        /// These are often pointers to fake items that look good in a tooltip, but represent an abstract concept of what you will get for a reward rather than the specific items you may obtain.
        public var rewardTooltipItems: [Destiny.DestinyItemQuantity]?

        public enum CodingKeys: String, CodingKey {
            case challengeObjectiveHashes
            case modifierHashes
            case rewardTooltipItems
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            challengeObjectiveHashes = try? container.decode([UInt32].self, forKey: CodingKeys.challengeObjectiveHashes)
            modifierHashes = try? container.decode([UInt32].self, forKey: CodingKeys.modifierHashes)
            rewardTooltipItems = try? container.decode([Destiny.DestinyItemQuantity].self, forKey: CodingKeys.rewardTooltipItems)
        }
    }
}
