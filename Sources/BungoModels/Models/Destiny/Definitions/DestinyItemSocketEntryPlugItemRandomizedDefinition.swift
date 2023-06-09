// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemSocketEntryPlugItemRandomizedDefinition.swift

import Foundation

public extension Destiny.Definitions {
    struct DestinyItemSocketEntryPlugItemRandomizedDefinition: Codable {
        public var craftingRequirements: Destiny.Definitions.DestinyPlugItemCraftingRequirements?

        /// Indicates if the plug can be rolled on the current version of the item. For example, older versions of weapons may have plug rolls that are no longer possible on the current versions.
        public var currentlyCanRoll: Bool?

        /// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
        public var plugItemHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case craftingRequirements
            case currentlyCanRoll
            case plugItemHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            craftingRequirements = try? container.decode(Destiny.Definitions.DestinyPlugItemCraftingRequirements.self, forKey: CodingKeys.craftingRequirements)
            currentlyCanRoll = try? container.decode(Bool.self, forKey: CodingKeys.currentlyCanRoll)
            plugItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.plugItemHash)
        }
    }
}
