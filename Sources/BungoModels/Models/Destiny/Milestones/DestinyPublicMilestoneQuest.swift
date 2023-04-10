// This File was auto generated by BungoKitGen
//
// File: DestinyPublicMilestoneQuest.swift

import Foundation

public extension Destiny.Milestones {
    struct DestinyPublicMilestoneQuest: Codable {
        /// A milestone need not have an active activity, but if there is one it will be returned here, along with any variant and additional information.
        public var activity: Destiny.Milestones.DestinyPublicMilestoneActivity?
        /// For the given quest there could be 0-to-Many challenges: mini quests that you can perform in the course of doing this quest, that may grant you rewards and benefits.
        public var challenges: [Destiny.Milestones.DestinyPublicMilestoneChallenge]?
        /// Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item's DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data.
        public var questItemHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case activity
            case challenges
            case questItemHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activity = try? container.decode(Destiny.Milestones.DestinyPublicMilestoneActivity.self, forKey: CodingKeys.activity)
            challenges = try? container.decode([Destiny.Milestones.DestinyPublicMilestoneChallenge].self, forKey: CodingKeys.challenges)
            questItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.questItemHash)
        }
    }
}
