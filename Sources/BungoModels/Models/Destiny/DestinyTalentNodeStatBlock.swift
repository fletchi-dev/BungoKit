// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyTalentNodeStatBlock.swift

import Foundation

public extension Destiny {
    /// This property has some history. A talent grid can provide stats on both the item it's related to and the character equipping the item. This returns data about those stat bonuses.
    struct DestinyTalentNodeStatBlock: Codable {
        /// The stat benefits conferred when this talent node is activated for the current Step that is active on the node.
        public var currentStepStats: [Destiny.DestinyStat]?

        /// This is a holdover from the old days of Destiny 1, when a node could be activated multiple times, conferring multiple steps worth of benefits: you would use this property to show what activating the "next" step on the node would provide vs. what the current step is providing. While Nodes are currently not being used this way, the underlying system for this functionality still exists. I hesitate to remove this property while the ability for designers to make such a talent grid still exists. Whether you want to show it is up to you.
        public var nextStepStats: [Destiny.DestinyStat]?

        public enum CodingKeys: String, CodingKey {
            case currentStepStats
            case nextStepStats
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            currentStepStats = try? container.decode([Destiny.DestinyStat].self, forKey: CodingKeys.currentStepStats)
            nextStepStats = try? container.decode([Destiny.DestinyStat].self, forKey: CodingKeys.nextStepStats)
        }
    }
}
