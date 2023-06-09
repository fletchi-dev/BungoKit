// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorCategoryEntryDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// This is the definition for a single Vendor Category, into which Sale Items are grouped.
    struct DestinyVendorCategoryEntryDefinition: Codable {
        /// The localized string for making purchases from this category, if it is different from the vendor's string for purchasing.
        public var buyStringOverride: String?

        /// The hashed identifier for the category.
        public var categoryHash: UInt32?

        /// The index of the category in the original category definitions for the vendor.
        public var categoryIndex: Int32?

        /// If the category is disabled, this is the localized description to show.
        public var disabledDescription: String?

        /// The localized title of the category.
        public var displayTitle: String?

        /// True if this category doesn't allow purchases.
        public var hideFromRegularPurchase: Bool?

        /// If you don't have the currency required to buy items from this category, should the items be hidden?
        public var hideIfNoCurrency: Bool?

        /// If true, this category only displays items: you can't purchase anything in them.
        public var isDisplayOnly: Bool?

        /// Sometimes a category isn't actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment.
        public var isPreview: Bool?

        /// If this category has an overlay prompt that should appear, this contains the details of that prompt.
        public var overlay: Destiny.Definitions.DestinyVendorCategoryOverlayDefinition?

        /// The amount of items that will be available when this category is shown.
        public var quantityAvailable: Int32?

        public var resetIntervalMinutesOverride: Int32?

        public var resetOffsetMinutesOverride: Int32?

        /// If items aren't up for sale in this category, should we still show them (greyed out)?
        public var showUnavailableItems: Bool?

        /// Used in sorting items in vendors... but there's a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself.
        public var sortValue: Int32?

        /// A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime.
        public var vendorItemIndexes: [Int32]?

        public enum CodingKeys: String, CodingKey {
            case buyStringOverride
            case categoryHash
            case categoryIndex
            case disabledDescription
            case displayTitle
            case hideFromRegularPurchase
            case hideIfNoCurrency
            case isDisplayOnly
            case isPreview
            case overlay
            case quantityAvailable
            case resetIntervalMinutesOverride
            case resetOffsetMinutesOverride
            case showUnavailableItems
            case sortValue
            case vendorItemIndexes
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            buyStringOverride = try? container.decode(String.self, forKey: CodingKeys.buyStringOverride)
            categoryHash = try? container.decode(UInt32.self, forKey: CodingKeys.categoryHash)
            categoryIndex = try? container.decode(Int32.self, forKey: CodingKeys.categoryIndex)
            disabledDescription = try? container.decode(String.self, forKey: CodingKeys.disabledDescription)
            displayTitle = try? container.decode(String.self, forKey: CodingKeys.displayTitle)
            hideFromRegularPurchase = try? container.decode(Bool.self, forKey: CodingKeys.hideFromRegularPurchase)
            hideIfNoCurrency = try? container.decode(Bool.self, forKey: CodingKeys.hideIfNoCurrency)
            isDisplayOnly = try? container.decode(Bool.self, forKey: CodingKeys.isDisplayOnly)
            isPreview = try? container.decode(Bool.self, forKey: CodingKeys.isPreview)
            overlay = try? container.decode(Destiny.Definitions.DestinyVendorCategoryOverlayDefinition.self, forKey: CodingKeys.overlay)
            quantityAvailable = try? container.decode(Int32.self, forKey: CodingKeys.quantityAvailable)
            resetIntervalMinutesOverride = try? container.decode(Int32.self, forKey: CodingKeys.resetIntervalMinutesOverride)
            resetOffsetMinutesOverride = try? container.decode(Int32.self, forKey: CodingKeys.resetOffsetMinutesOverride)
            showUnavailableItems = try? container.decode(Bool.self, forKey: CodingKeys.showUnavailableItems)
            sortValue = try? container.decode(Int32.self, forKey: CodingKeys.sortValue)
            vendorItemIndexes = try? container.decode([Int32].self, forKey: CodingKeys.vendorItemIndexes)
        }
    }
}
