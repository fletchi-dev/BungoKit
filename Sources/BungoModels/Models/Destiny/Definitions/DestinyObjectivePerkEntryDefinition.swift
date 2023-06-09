// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyObjectivePerkEntryDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Defines the conditions under which an intrinsic perk is applied while participating in an Objective.
    /// These perks will generally not be benefit-granting perks, but rather a perk that modifies gameplay in some interesting way.
    struct DestinyObjectivePerkEntryDefinition: Codable {
        /// The hash identifier of the DestinySandboxPerkDefinition that will be applied to the character.
        public var perkHash: UInt32?

        /// An enumeration indicating whether it will be applied as long as the Objective is active, when it's completed, or until it's completed.
        public var style: Destiny.DestinyObjectiveGrantStyle?

        public enum CodingKeys: String, CodingKey {
            case perkHash
            case style
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            perkHash = try? container.decode(UInt32.self, forKey: CodingKeys.perkHash)
            style = try? container.decode(Destiny.DestinyObjectiveGrantStyle.self, forKey: CodingKeys.style)
        }
    }
}
