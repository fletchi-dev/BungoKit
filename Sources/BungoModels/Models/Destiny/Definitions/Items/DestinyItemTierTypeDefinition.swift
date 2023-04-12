// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemTierTypeDefinition.swift

import Foundation

public extension Destiny.Definitions.Items {
    /// Defines the tier type of an item. Mostly this provides human readable properties for types like Common, Rare, etc...
    /// It also provides some base data for infusion that could be useful.
    struct DestinyItemTierTypeDefinition: Codable {
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If this tier defines infusion properties, they will be contained here.
        public var infusionProcess: Destiny.Definitions.Items.DestinyItemTierTypeInfusionBlock?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayProperties
            case hash
            case index
            case infusionProcess
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            infusionProcess = try? container.decode(Destiny.Definitions.Items.DestinyItemTierTypeInfusionBlock.self, forKey: CodingKeys.infusionProcess)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
