// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLoreDefinition.swift

import Foundation

public extension Destiny.Definitions.Lore {
    /// These are definitions for in-game "Lore," meant to be narrative enhancements of the game experience.
    /// DestinyInventoryItemDefinitions for interesting items point to these definitions, but nothing's stopping you from scraping all of these and doing something cool with them. If they end up having cool data.
    struct DestinyLoreDefinition: Codable {
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case displayProperties
            case hash
            case index
            case redacted
            case subtitle
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            subtitle = try? container.decode(String.self, forKey: CodingKeys.subtitle)
        }
    }
}
