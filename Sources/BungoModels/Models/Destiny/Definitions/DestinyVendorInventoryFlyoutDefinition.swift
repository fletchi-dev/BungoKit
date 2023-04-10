// This File was auto generated by BungoKitGen
//
// File: DestinyVendorInventoryFlyoutDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// The definition for an "inventory flyout": a UI screen where we show you part of an otherwise hidden vendor inventory: like the Vault inventory buckets.
    struct DestinyVendorInventoryFlyoutDefinition: Codable {
        /// A list of inventory buckets and other metadata to show on the screen.
        public var buckets: [Destiny.Definitions.DestinyVendorInventoryFlyoutBucketDefinition]?
        /// The title and other common properties of the flyout.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        /// If this flyout is meant to show you the contents of the player's equipment slot, this is the slot to show.
        public var equipmentSlotHash: UInt32?
        /// An identifier for the flyout, in case anything else needs to refer to them.
        public var flyoutId: UInt32?
        /// If the flyout is locked, this is the reason why.
        public var lockedDescription: String?
        /// If this is true, don't show any of the glistening "this is a new item" UI elements, like we show on the inventory items themselves in in-game UI.
        public var suppressNewness: Bool?

        public enum CodingKeys: String, CodingKey {
            case buckets
            case displayProperties
            case equipmentSlotHash
            case flyoutId
            case lockedDescription
            case suppressNewness
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            buckets = try? container.decode([Destiny.Definitions.DestinyVendorInventoryFlyoutBucketDefinition].self, forKey: CodingKeys.buckets)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            equipmentSlotHash = try? container.decode(UInt32.self, forKey: CodingKeys.equipmentSlotHash)
            flyoutId = try? container.decode(UInt32.self, forKey: CodingKeys.flyoutId)
            lockedDescription = try? container.decode(String.self, forKey: CodingKeys.lockedDescription)
            suppressNewness = try? container.decode(Bool.self, forKey: CodingKeys.suppressNewness)
        }
    }
}
