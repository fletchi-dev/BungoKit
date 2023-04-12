// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyProgressionMappingDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Aggregations of multiple progressions.
    /// These are used to apply rewards to multiple progressions at once. They can sometimes have human readable data as well, but only extremely sporadically.
    struct DestinyProgressionMappingDefinition: Codable {
        /// Infrequently defined in practice. Defer to the individual progressions' display properties.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The localized unit of measurement for progression across the progressions defined in this mapping. Unfortunately, this is very infrequently defined. Defer to the individual progressions' display units.
        public var displayUnits: String?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayProperties
            case displayUnits
            case hash
            case index
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            displayUnits = try? container.decode(String.self, forKey: CodingKeys.displayUnits)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
