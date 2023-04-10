// This File was auto generated by BungoKitGen
//
// File: DestinyItemCategoryDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// In an attempt to categorize items by type, usage, and other interesting properties, we created DestinyItemCategoryDefinition: information about types that is assembled using a set of heuristics that examine the properties of an item such as what inventory bucket it's in, its item type name, and whether it has or is missing certain blocks of data.
    /// This heuristic is imperfect, however. If you find an item miscategorized, let us know on the Bungie API forums!
    /// We then populate all of the categories that we think an item belongs to in its DestinyInventoryItemDefinition.itemCategoryHashes property. You can use that to provide your own custom item filtering, sorting, aggregating... go nuts on it! And let us know if you see more categories that you wish would be added!
    struct DestinyItemCategoryDefinition: Codable {
        /// If True, this category has been deprecated: it may have no items left, or there may be only legacy items that remain in it which are no longer relevant to the game.
        public var deprecated: Bool?
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        /// If the item in question has this category, it also should have this breaker type.
        public var grantDestinyBreakerType: Destiny.DestinyBreakerType?
        /// If an item belongs to this category, it will also get this class restriction enum value.
        /// See the other "grant"-prefixed properties on this definition for my color commentary.
        public var grantDestinyClass: Destiny.DestinyClass?
        /// If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that's a story that requires more alcohol.
        public var grantDestinyItemType: Destiny.DestinyItemType?
        /// If an item belongs to this category, it will also receive this subtype enum value.
        /// I know what you're thinking - what if it belongs to multiple categories that provide sub-types?
        /// The last one processed wins, as is the case with all of these "grant" enums. Now you can see one reason why we moved away from these enums... but they're so convenient when they work, aren't they?
        public var grantDestinySubType: Destiny.DestinyItemSubType?
        /// If true, this category is only used for grouping, and should not be evaluated with its own checks. Rather, the item only has this category if it has one of its child categories.
        public var groupCategoryOnly: Bool?
        /// If this category is a "parent" category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.
        /// In this way, you can build up a visual hierarchy of item categories. That's what we did, and you can do it too. I believe in you. Yes, you, Carl.
        /// (I hope someone named Carl reads this someday)
        public var groupedCategoryHashes: [UInt32]?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        /// The janky regular expression we used against the item type to try and discern whether the item belongs to this category.
        public var itemTypeRegex: String?
        /// If the item type matches this janky regex, it does *not* belong to this category.
        public var itemTypeRegexNot: String?
        /// If the item belongs to this bucket, it does belong to this category.
        public var originBucketIdentifier: String?
        /// All item category hashes of "parent" categories: categories that contain this as a child through the hierarchy of groupedCategoryHashes. It's a bit redundant, but having this child-centric list speeds up some calculations.
        public var parentCategoryHashes: [UInt32]?
        /// If the item is a plug, this is the identifier we expect to find associated with it if it is in this category.
        public var plugCategoryIdentifier: String?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        /// A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn't exist for D2... yet.
        public var shortTitle: String?
        /// The traitId that can be found on items that belong to this category.
        public var traitId: String?
        /// If True, this category should be visible in UI. Sometimes we make categories that we don't think are interesting externally. It's up to you if you want to skip on showing them.
        public var visible: Bool?

        public enum CodingKeys: String, CodingKey {
            case deprecated
            case displayProperties
            case grantDestinyBreakerType
            case grantDestinyClass
            case grantDestinyItemType
            case grantDestinySubType
            case groupCategoryOnly
            case groupedCategoryHashes
            case hash
            case index
            case itemTypeRegex
            case itemTypeRegexNot
            case originBucketIdentifier
            case parentCategoryHashes
            case plugCategoryIdentifier
            case redacted
            case shortTitle
            case traitId
            case visible
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            deprecated = try? container.decode(Bool.self, forKey: CodingKeys.deprecated)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            grantDestinyBreakerType = try? container.decode(Destiny.DestinyBreakerType.self, forKey: CodingKeys.grantDestinyBreakerType)
            grantDestinyClass = try? container.decode(Destiny.DestinyClass.self, forKey: CodingKeys.grantDestinyClass)
            grantDestinyItemType = try? container.decode(Destiny.DestinyItemType.self, forKey: CodingKeys.grantDestinyItemType)
            grantDestinySubType = try? container.decode(Destiny.DestinyItemSubType.self, forKey: CodingKeys.grantDestinySubType)
            groupCategoryOnly = try? container.decode(Bool.self, forKey: CodingKeys.groupCategoryOnly)
            groupedCategoryHashes = try? container.decode([UInt32].self, forKey: CodingKeys.groupedCategoryHashes)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            itemTypeRegex = try? container.decode(String.self, forKey: CodingKeys.itemTypeRegex)
            itemTypeRegexNot = try? container.decode(String.self, forKey: CodingKeys.itemTypeRegexNot)
            originBucketIdentifier = try? container.decode(String.self, forKey: CodingKeys.originBucketIdentifier)
            parentCategoryHashes = try? container.decode([UInt32].self, forKey: CodingKeys.parentCategoryHashes)
            plugCategoryIdentifier = try? container.decode(String.self, forKey: CodingKeys.plugCategoryIdentifier)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            shortTitle = try? container.decode(String.self, forKey: CodingKeys.shortTitle)
            traitId = try? container.decode(String.self, forKey: CodingKeys.traitId)
            visible = try? container.decode(Bool.self, forKey: CodingKeys.visible)
        }
    }
}
