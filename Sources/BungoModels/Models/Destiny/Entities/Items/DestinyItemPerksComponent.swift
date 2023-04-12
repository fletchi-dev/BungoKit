// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemPerksComponent.swift

import Foundation

public extension Destiny.Entities.Items {
    /// Instanced items can have perks: benefits that the item bestows.
    /// These are related to DestinySandboxPerkDefinition, and sometimes - but not always - have human readable info. When they do, they are the icons and text that you see in an item's tooltip.
    /// Talent Grids, Sockets, and the item itself can apply Perks, which are then summarized here for your convenience.
    struct DestinyItemPerksComponent: Codable {
        /// The list of perks to display in an item tooltip - and whether or not they have been activated.
        public var perks: [Destiny.Perks.DestinyPerkReference]?

        public enum CodingKeys: String, CodingKey {
            case perks
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            perks = try? container.decode([Destiny.Perks.DestinyPerkReference].self, forKey: CodingKeys.perks)
        }
    }
}
