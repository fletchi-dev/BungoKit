// This File was auto generated by BungoKitGen
//
// File: DestinyDerivedItemDefinition.swift

import Foundation

public extension Destiny.Definitions.Items {
    /// This is a reference to, and summary data for, a specific item that you can get as a result of Using or Acquiring some other Item (For example, this could be summary information for an Emote that you can get by opening an an Eververse Box) See DestinyDerivedItemCategoryDefinition for more information.
    struct DestinyDerivedItemDefinition: Codable {
        /// An icon for the item.
        public var iconPath: String?
        /// A brief description of the item.
        public var itemDescription: String?
        /// Additional details about the derived item, in addition to the description.
        public var itemDetail: String?
        /// The hash for the DestinyInventoryItemDefinition of this derived item, if there is one. Sometimes we are given this information as a manual override, in which case there won't be an actual DestinyInventoryItemDefinition for what we display, but you can still show the strings from this object itself.
        public var itemHash: UInt32?
        /// The name of the derived item.
        public var itemName: String?
        /// If the item was derived from a "Preview Vendor", this will be an index into the DestinyVendorDefinition's itemList property. Otherwise, -1.
        public var vendorItemIndex: Int32?

        public enum CodingKeys: String, CodingKey {
            case iconPath
            case itemDescription
            case itemDetail
            case itemHash
            case itemName
            case vendorItemIndex
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            iconPath = try? container.decode(String.self, forKey: CodingKeys.iconPath)
            itemDescription = try? container.decode(String.self, forKey: CodingKeys.itemDescription)
            itemDetail = try? container.decode(String.self, forKey: CodingKeys.itemDetail)
            itemHash = try? container.decode(UInt32.self, forKey: CodingKeys.itemHash)
            itemName = try? container.decode(String.self, forKey: CodingKeys.itemName)
            vendorItemIndex = try? container.decode(Int32.self, forKey: CodingKeys.vendorItemIndex)
        }
    }
}
