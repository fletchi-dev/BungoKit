// This File was auto generated by BungoKitGen
//
// File: DestinyMilestoneActivityDefinition.swift

import Foundation

public extension Destiny.Definitions.Milestones {
    /// Milestones can have associated activities which provide additional information about the context, challenges, modifiers, state etc... related to this Milestone.
    /// Information we need to be able to return that data is defined here, along with Tier data to establish a relationship between a conceptual Activity and its difficulty levels and variants.
    struct DestinyMilestoneActivityDefinition: Codable {
        /// The "Conceptual" activity hash. Basically, we picked the lowest level activity and are treating it as the canonical definition of the activity for rendering purposes.
        /// If you care about the specific difficulty modes and variations, use the activities under "Variants".
        public var conceptualActivityHash: UInt32?
        /// A milestone-referenced activity can have many variants, such as Tiers or alternative modes of play.
        /// Even if there is only a single variant, the details for these are represented within as a variant definition.
        /// It is assumed that, if this DestinyMilestoneActivityDefinition is active, then all variants should be active.
        /// If a Milestone could ever split the variants' active status conditionally, they should all have their own DestinyMilestoneActivityDefinition instead! The potential duplication will be worth it for the obviousness of processing and use.
        public var variants: [Int: Destiny.Definitions.Milestones.DestinyMilestoneActivityVariantDefinition]?

        public enum CodingKeys: String, CodingKey {
            case conceptualActivityHash
            case variants
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            conceptualActivityHash = try? container.decode(UInt32.self, forKey: CodingKeys.conceptualActivityHash)
            variants = try? container.decode([Int: Destiny.Definitions.Milestones.DestinyMilestoneActivityVariantDefinition].self, forKey: CodingKeys.variants)
        }
    }
}
