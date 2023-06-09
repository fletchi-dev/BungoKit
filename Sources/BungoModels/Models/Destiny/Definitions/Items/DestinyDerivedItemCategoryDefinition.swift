// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyDerivedItemCategoryDefinition.swift

import Foundation

public extension Destiny.Definitions.Items {
    /// A shortcut for the fact that some items have a "Preview Vendor" - See DestinyInventoryItemDefinition.preview.previewVendorHash - that is intended to be used to show what items you can get as a result of acquiring or using this item.
    /// A common example of this in Destiny 1 was Eververse "Boxes," which could have many possible items. This "Preview Vendor" is not a vendor you can actually see in the game, but it defines categories and sale items for all of the possible items you could get from the Box so that the game can show them to you. We summarize that info here so that you don't have to do that Vendor lookup and aggregation manually.
    struct DestinyDerivedItemCategoryDefinition: Codable {
        /// The localized string for the category title. This will be something describing the items you can get as a group, or your likelihood/the quantity you'll get.
        public var categoryDescription: String?

        /// This is the list of all of the items for this category and the basic properties we'll know about them.
        public var items: [Destiny.Definitions.Items.DestinyDerivedItemDefinition]?

        public enum CodingKeys: String, CodingKey {
            case categoryDescription
            case items
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            categoryDescription = try? container.decode(String.self, forKey: CodingKeys.categoryDescription)
            items = try? container.decode([Destiny.Definitions.Items.DestinyDerivedItemDefinition].self, forKey: CodingKeys.items)
        }
    }
}
