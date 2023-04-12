// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: InventoryChangedResponse.swift

import Foundation

public extension Destiny.Responses {
    /// A response containing all of the components for all requested vendors.
    struct InventoryChangedResponse: Codable {
        /// Items that appeared in the inventory possibly as a result of an action.
        public var addedInventoryItems: [Destiny.Entities.Items.DestinyItemComponent]?

        /// Items that disappeared from the inventory possibly as a result of an action.
        public var removedInventoryItems: [Destiny.Entities.Items.DestinyItemComponent]?

        public enum CodingKeys: String, CodingKey {
            case addedInventoryItems
            case removedInventoryItems
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            addedInventoryItems = try? container.decode([Destiny.Entities.Items.DestinyItemComponent].self, forKey: CodingKeys.addedInventoryItems)
            removedInventoryItems = try? container.decode([Destiny.Entities.Items.DestinyItemComponent].self, forKey: CodingKeys.removedInventoryItems)
        }
    }
}
