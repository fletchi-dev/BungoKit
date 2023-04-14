// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyMilestoneQuestDefinition.swift

import Foundation

public extension Destiny.Definitions.Milestones {
    /// Any data we need to figure out whether this Quest Item is the currently active one for the conceptual Milestone. Even just typing this description, I already regret it.
    struct DestinyMilestoneQuestDefinition: Codable {
        /// The full set of all possible "conceptual activities" that are related to this Milestone. Tiers or alternative modes of play within these conceptual activities will be defined as sub-entities. Keyed by the Conceptual Activity Hash. Use the key to look up DestinyActivityDefinition.
        public var activities: [UInt32: Destiny.Definitions.Milestones.DestinyMilestoneActivityDefinition]?

        /// Sometimes, a Milestone's quest is related to an entire Destination rather than a specific activity. In that situation, this will be the hash of that Destination. Hotspots are currently the only Milestones that expose this data, but that does not preclude this data from being returned for other Milestones in the future.
        public var destinationHash: UInt32?

        /// The individual quests may have different definitions from the overall milestone: if there's a specific active quest, use these displayProperties instead of that of the overall DestinyMilestoneDefinition.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// If populated, this image can be shown instead of the generic milestone's image when this quest is live, or it can be used to show a background image for the quest itself that differs from that of the Activity or the Milestone.
        public var overrideImage: String?

        /// The item representing this Milestone quest. Use this hash to look up the DestinyInventoryItemDefinition for the quest to find its steps and human readable data.
        public var questItemHash: UInt32?

        /// The rewards you will get for completing this quest, as best as we could extract them from our data. Sometimes, it'll be a decent amount of data. Sometimes, it's going to be sucky. Sorry.
        public var questRewards: Destiny.Definitions.Milestones.DestinyMilestoneQuestRewardsDefinition?

        public enum CodingKeys: String, CodingKey {
            case activities
            case destinationHash
            case displayProperties
            case overrideImage
            case questItemHash
            case questRewards
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activities = try? container.decode([UInt32: Destiny.Definitions.Milestones.DestinyMilestoneActivityDefinition].self, forKey: CodingKeys.activities)
            destinationHash = try? container.decode(UInt32.self, forKey: CodingKeys.destinationHash)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            overrideImage = try? container.decode(String.self, forKey: CodingKeys.overrideImage)
            questItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.questItemHash)
            questRewards = try? container.decode(Destiny.Definitions.Milestones.DestinyMilestoneQuestRewardsDefinition.self, forKey: CodingKeys.questRewards)
        }
    }
}
