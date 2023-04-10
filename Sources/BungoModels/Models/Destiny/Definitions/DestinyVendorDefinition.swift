// This File was auto generated by BungoKitGen
//
// File: DestinyVendorDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// These are the definitions for Vendors.
    /// In Destiny, a Vendor can be a lot of things - some things that you wouldn't expect, and some things that you don't even see directly in the game. Vendors are the Dolly Levi of the Destiny universe.
    /// - Traditional Vendors as you see in game: people who you come up to and who give you quests, rewards, or who you can buy things from.
    /// - Kiosks/Collections, which are really just Vendors that don't charge currency (or charge some pittance of a currency) and whose gating for purchases revolves more around your character's state.
    /// - Previews for rewards or the contents of sacks. These are implemented as Vendors, where you can't actually purchase from them but the items that they have for sale and the categories of sale items reflect the rewards or contents of the sack. This is so that the game could reuse the existing Vendor display UI for rewards and save a bunch of wheel reinvention.
    /// - Item Transfer capabilities, like the Vault and Postmaster. Vendors can have "acceptedItem" buckets that determine the source and destination buckets for transfers. When you interact with such a vendor, these buckets are what gets shown in the UI instead of any items that the Vendor would have for sale. Yep, the Vault is a vendor.
    /// It is pretty much guaranteed that they'll be used for even more features in the future. They have come to be seen more as generic categorized containers for items than "vendors" in a traditional sense, for better or worse.
    /// Where possible and time allows, we'll attempt to split those out into their own more digestible derived "Definitions": but often time does not allow that, as you can see from the above ways that vendors are used which we never split off from Vendor Definitions externally.
    /// Since Vendors are so many things to so many parts of the game, the definition is understandably complex. You will want to combine this data with live Vendor information from the API when it is available.
    struct DestinyVendorDefinition: Codable {
        /// If the Vendor is actually a vehicle for the transferring of items (like the Vault and Postmaster vendors), this defines the list of source->destination buckets for transferring.
        public var acceptedItems: [Destiny.Definitions.DestinyVendorAcceptedItemDefinition]?
        /// Describes "actions" that can be performed on a vendor. Currently, none of these exist. But theoretically a Vendor could let you interact with it by performing actions. We'll see what these end up looking like if they ever get used.
        public var actions: [Destiny.Definitions.DestinyVendorActionDefinition]?
        /// If the vendor has a custom localized string describing the "buy" action, that is returned here.
        public var buyString: String?
        /// These are the headers for sections of items that the vendor is selling. When you see items organized by category in the header, it is these categories that it is showing.
        /// Well, technically not *exactly* these. On BNet, it doesn't make sense to have categories be "paged" as we do in Destiny, so we run some heuristics to attempt to aggregate pages of categories together.
        /// These are the categories post-concatenation, if the vendor had concatenation applied. If you want the pre-aggregated category data, use originalCategories.
        public var categories: [Destiny.Definitions.DestinyVendorCategoryEntryDefinition]?
        /// If TRUE, consolidate categories that only differ by trivial properties (such as having minor differences in name)
        public var consolidateCategories: Bool?
        /// Display Categories are different from "categories" in that these are specifically for visual grouping and display of categories in Vendor UI.
        /// The "categories" structure is for validation of the contained items, and can be categorized entirely separately from "Display Categories", there need be and often will be no meaningful relationship between the two.
        public var displayCategories: [Destiny.Definitions.DestinyDisplayCategoryDefinition]?
        /// If the vendor has an item that should be displayed as the "featured" item, this is the hash identifier for that DestinyVendorItemDefinition.
        /// Apparently this is usually a related currency, like a reputation token. But it need not be restricted to that.
        public var displayItemHash: UInt32?
        public var displayProperties: Destiny.Definitions.DestinyVendorDisplayPropertiesDefinition?
        /// If a vendor is not enabled, we won't even save the vendor's definition, and we won't return any items or info about them. It's as if they don't exist.
        public var enabled: Bool?
        /// If the Vendor has a faction, this hash will be valid and point to a DestinyFactionDefinition.
        /// The game UI and BNet often mine the faction definition for additional elements and details to place on the screen, such as the faction's Progression status (aka "Reputation").
        public var factionHash: UInt32?
        /// If an item can't be purchased from the vendor, there may be many "custom"/game state specific reasons why not.
        /// This is a list of localized strings with messages for those custom failures. The live BNet data will return a failureIndexes property for items that can't be purchased: using those values to index into this array, you can show the user the appropriate failure message for the item that can't be bought.
        public var failureStrings: [String]?
        /// A vendor can be a part of 0 or 1 "groups" at a time: a group being a collection of Vendors related by either location or function/purpose. It's used for our our Companion Vendor UI. Only one of these can be active for a Vendor at a time.
        public var groups: [Destiny.Definitions.DestinyVendorGroupReference]?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// Some items don't make sense to return in the API, for example because they represent an action to be performed rather than an item being sold. I'd rather we not do this, but at least in the short term this is a workable workaround.
        public var ignoreSaleItemHashes: [UInt32]?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        /// If this is true, you aren't allowed to buy whatever the vendor is selling.
        public var inhibitBuying: Bool?
        /// If this is true, you're not allowed to sell whatever the vendor is buying.
        public var inhibitSelling: Bool?
        /// In addition to selling items, vendors can have "interactions": UI where you "talk" with the vendor and they offer you a reward, some item, or merely acknowledge via dialog that you did something cool.
        public var interactions: [Destiny.Definitions.DestinyVendorInteractionDefinition]?
        /// If the vendor shows you items from your own inventory - such as the Vault vendor does - this data describes the UI around showing those inventory buckets and which ones get shown.
        public var inventoryFlyouts: [Destiny.Definitions.DestinyVendorInventoryFlyoutDefinition]?
        /// If the vendor sells items (or merely has a list of items to show like the "Sack" vendors do), this is the list of those items that the vendor can sell. From this list, only a subset will be available from the vendor at any given time, selected randomly and reset on the vendor's refresh interval.
        /// Note that a vendor can sell the same item multiple ways: for instance, nothing stops a vendor from selling you some specific weapon but using two different currencies, or the same weapon at multiple "item levels".
        public var itemList: [Destiny.Definitions.DestinyVendorItemDefinition]?
        /// A vendor can be at different places in the world depending on the game/character/account state. This is the list of possible locations for the vendor, along with conditions we use to determine which one is currently active.
        public var locations: [Destiny.Definitions.Vendors.DestinyVendorLocationDefinition]?
        /// See the categories property for a description of categories and why originalCategories exists.
        public var originalCategories: [Destiny.Definitions.DestinyVendorCategoryEntryDefinition]?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        /// A number used for calculating the frequency of a vendor's inventory resetting/refreshing.
        /// Don't worry about calculating this - we do it on the server side and send you the next refresh date with the live data.
        public var resetIntervalMinutes: Int32?
        /// Again, used for reset/refreshing of inventory. Don't worry too much about it. Unless you want to.
        public var resetOffsetMinutes: Int32?
        /// As many of you know, Vendor data has historically been pretty brutal on the BNet servers. In an effort to reduce this workload, only Vendors with this flag set will be returned on Vendor requests. This allows us to filter out Vendors that don't dynamic data that's particularly useful: things like "Preview/Sack" vendors, for example, that you can usually suss out the details for using just the definitions themselves.
        public var returnWithVendorRequest: Bool?
        /// Ditto for selling. Not that you can sell items to a vendor anymore. Will it come back? Who knows. The string's still there.
        public var sellString: String?
        /// BNet doesn't use this data yet, but it appears to be an optional list of flavor text about services that the Vendor can provide.
        public var services: [Destiny.Definitions.DestinyVendorServiceDefinition]?
        /// If we were able to predict the dates when this Vendor will be visible/available, this will be the list of those date ranges. Sadly, we're not able to predict this very frequently, so this will often be useless data.
        public var unlockRanges: [Dates.DateRange]?
        /// If the vendor has a custom banner image, that can be found here.
        public var vendorBanner: String?
        /// The internal identifier for the Vendor. A holdover from the old days of Vendors, but we don't have time to refactor it away.
        public var vendorIdentifier: String?
        /// A portrait of the Vendor's smiling mug. Or frothing tentacles.
        public var vendorPortrait: String?
        /// The type of reward progression that this vendor has. Default - The original rank progression from token redemption. Ritual - Progression from ranks in ritual content. For example: Crucible (Shaxx), Gambit (Drifter), and Battlegrounds (War Table).
        public var vendorProgressionType: Destiny.DestinyVendorProgressionType?
        /// The identifier of the VendorCategoryDefinition for this vendor's subcategory.
        public var vendorSubcategoryIdentifier: String?
        /// If a vendor is not visible, we still have and will give vendor definition info, but we won't use them for things like Advisors or UI.
        public var visible: Bool?

        public enum CodingKeys: String, CodingKey {
            case acceptedItems
            case actions
            case buyString
            case categories
            case consolidateCategories
            case displayCategories
            case displayItemHash
            case displayProperties
            case enabled
            case factionHash
            case failureStrings
            case groups
            case hash
            case ignoreSaleItemHashes
            case index
            case inhibitBuying
            case inhibitSelling
            case interactions
            case inventoryFlyouts
            case itemList
            case locations
            case originalCategories
            case redacted
            case resetIntervalMinutes
            case resetOffsetMinutes
            case returnWithVendorRequest
            case sellString
            case services
            case unlockRanges
            case vendorBanner
            case vendorIdentifier
            case vendorPortrait
            case vendorProgressionType
            case vendorSubcategoryIdentifier
            case visible
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            acceptedItems = try? container.decode([Destiny.Definitions.DestinyVendorAcceptedItemDefinition].self, forKey: CodingKeys.acceptedItems)
            actions = try? container.decode([Destiny.Definitions.DestinyVendorActionDefinition].self, forKey: CodingKeys.actions)
            buyString = try? container.decode(String.self, forKey: CodingKeys.buyString)
            categories = try? container.decode([Destiny.Definitions.DestinyVendorCategoryEntryDefinition].self, forKey: CodingKeys.categories)
            consolidateCategories = try? container.decode(Bool.self, forKey: CodingKeys.consolidateCategories)
            displayCategories = try? container.decode([Destiny.Definitions.DestinyDisplayCategoryDefinition].self, forKey: CodingKeys.displayCategories)
            displayItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.displayItemHash)
            displayProperties = try? container.decode(Destiny.Definitions.DestinyVendorDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            enabled = try? container.decode(Bool.self, forKey: CodingKeys.enabled)
            factionHash = try? container.decode(UInt32.self, forKey: CodingKeys.factionHash)
            failureStrings = try? container.decode([String].self, forKey: CodingKeys.failureStrings)
            groups = try? container.decode([Destiny.Definitions.DestinyVendorGroupReference].self, forKey: CodingKeys.groups)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            ignoreSaleItemHashes = try? container.decode([UInt32].self, forKey: CodingKeys.ignoreSaleItemHashes)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            inhibitBuying = try? container.decode(Bool.self, forKey: CodingKeys.inhibitBuying)
            inhibitSelling = try? container.decode(Bool.self, forKey: CodingKeys.inhibitSelling)
            interactions = try? container.decode([Destiny.Definitions.DestinyVendorInteractionDefinition].self, forKey: CodingKeys.interactions)
            inventoryFlyouts = try? container.decode([Destiny.Definitions.DestinyVendorInventoryFlyoutDefinition].self, forKey: CodingKeys.inventoryFlyouts)
            itemList = try? container.decode([Destiny.Definitions.DestinyVendorItemDefinition].self, forKey: CodingKeys.itemList)
            locations = try? container.decode([Destiny.Definitions.Vendors.DestinyVendorLocationDefinition].self, forKey: CodingKeys.locations)
            originalCategories = try? container.decode([Destiny.Definitions.DestinyVendorCategoryEntryDefinition].self, forKey: CodingKeys.originalCategories)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            resetIntervalMinutes = try? container.decode(Int32.self, forKey: CodingKeys.resetIntervalMinutes)
            resetOffsetMinutes = try? container.decode(Int32.self, forKey: CodingKeys.resetOffsetMinutes)
            returnWithVendorRequest = try? container.decode(Bool.self, forKey: CodingKeys.returnWithVendorRequest)
            sellString = try? container.decode(String.self, forKey: CodingKeys.sellString)
            services = try? container.decode([Destiny.Definitions.DestinyVendorServiceDefinition].self, forKey: CodingKeys.services)
            unlockRanges = try? container.decode([Dates.DateRange].self, forKey: CodingKeys.unlockRanges)
            vendorBanner = try? container.decode(String.self, forKey: CodingKeys.vendorBanner)
            vendorIdentifier = try? container.decode(String.self, forKey: CodingKeys.vendorIdentifier)
            vendorPortrait = try? container.decode(String.self, forKey: CodingKeys.vendorPortrait)
            vendorProgressionType = try? container.decode(Destiny.DestinyVendorProgressionType.self, forKey: CodingKeys.vendorProgressionType)
            vendorSubcategoryIdentifier = try? container.decode(String.self, forKey: CodingKeys.vendorSubcategoryIdentifier)
            visible = try? container.decode(Bool.self, forKey: CodingKeys.visible)
        }
    }
}
