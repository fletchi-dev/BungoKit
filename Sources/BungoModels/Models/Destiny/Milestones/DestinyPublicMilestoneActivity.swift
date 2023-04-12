// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPublicMilestoneActivity.swift

import Foundation

public extension Destiny.Milestones {
    /// A milestone may have one or more conceptual Activities associated with it, and each of those conceptual activities could have a variety of variants, modes, tiers, what-have-you. Our attempts to determine what qualifies as a conceptual activity are, unfortunately, janky. So if you see missing modes or modes that don't seem appropriate to you, let us know and I'll buy you a beer if we ever meet up in person.
    struct DestinyPublicMilestoneActivity: Codable {
        /// The hash identifier of the activity that's been chosen to be considered the canonical "conceptual" activity definition. This may have many variants, defined herein.
        public var activityHash: UInt32?

        /// The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way.
        public var activityModeHash: UInt32?

        /// The enumeration equivalent of the most specific Activity Mode under which this activity is played.
        public var activityModeType: Int32?

        /// The activity may have 0-to-many modifiers: if it does, this will contain the hashes to the DestinyActivityModifierDefinition that defines the modifier being applied.
        public var modifierHashes: [UInt32]?

        /// Every relevant variation of this conceptual activity, including the conceptual activity itself, have variants defined here.
        public var variants: [Destiny.Milestones.DestinyPublicMilestoneActivityVariant]?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case activityModeHash
            case activityModeType
            case modifierHashes
            case variants
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            activityModeHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityModeHash)
            activityModeType = try? container.decode(Int32.self, forKey: CodingKeys.activityModeType)
            modifierHashes = try? container.decode([UInt32].self, forKey: CodingKeys.modifierHashes)
            variants = try? container.decode([Destiny.Milestones.DestinyPublicMilestoneActivityVariant].self, forKey: CodingKeys.variants)
        }
    }
}
