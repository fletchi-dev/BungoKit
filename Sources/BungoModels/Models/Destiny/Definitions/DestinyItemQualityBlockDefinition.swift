// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemQualityBlockDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// An item's "Quality" determines its calculated stats. The Level at which the item spawns is combined with its "qualityLevel" along with some additional calculations to determine the value of those stats.
    /// In Destiny 2, most items don't have default item levels and quality, making this property less useful: these apparently are almost always determined by the complex mechanisms of the Reward system rather than statically. They are still provided here in case they are still useful for people. This also contains some information about Infusion.
    struct DestinyItemQualityBlockDefinition: Codable {
        /// The latest version available for this item.
        public var currentVersion: UInt32?

        /// Icon overlays to denote the item version and power cap status.
        public var displayVersionWatermarkIcons: [String]?

        /// The hash identifier for the infusion. It does not map to a Definition entity.
        /// DEPRECATED: Items can now have multiple infusion categories. Please use infusionCategoryHashes instead.
        public var infusionCategoryHash: UInt32?

        /// If any one of these hashes matches any value in another item's infusionCategoryHashes, the two can infuse with each other.
        public var infusionCategoryHashes: [UInt32]?

        /// The string identifier for this item's "infusability", if any.
        /// Items that match the same infusionCategoryName are allowed to infuse with each other.
        /// DEPRECATED: Items can now have multiple infusion categories. Please use infusionCategoryHashes instead.
        public var infusionCategoryName: String?

        /// The "base" defined level of an item. This is a list because, in theory, each Expansion could define its own base level for an item.
        /// In practice, not only was that never done in Destiny 1, but now this isn't even populated at all. When it's not populated, the level at which it spawns has to be inferred by Reward information, of which BNet receives an imperfect view and will only be reliable on instanced data as a result.
        public var itemLevels: [Int32]?

        /// An item can refer to pre-set level requirements. They are defined in DestinyProgressionLevelRequirementDefinition, and you can use this hash to find the appropriate definition.
        public var progressionLevelRequirementHash: UInt32?

        /// qualityLevel is used in combination with the item's level to calculate stats like Attack and Defense. It plays a role in that calculation, but not nearly as large as itemLevel does.
        public var qualityLevel: Int32?

        /// The list of versions available for this item.
        public var versions: [Destiny.Definitions.DestinyItemVersionDefinition]?

        public enum CodingKeys: String, CodingKey {
            case currentVersion
            case displayVersionWatermarkIcons
            case infusionCategoryHash
            case infusionCategoryHashes
            case infusionCategoryName
            case itemLevels
            case progressionLevelRequirementHash
            case qualityLevel
            case versions
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            currentVersion = try? container.decode(UInt32.self, forKey: CodingKeys.currentVersion)
            displayVersionWatermarkIcons = try? container.decode([String].self, forKey: CodingKeys.displayVersionWatermarkIcons)
            infusionCategoryHash = try? container.decode(UInt32.self, forKey: CodingKeys.infusionCategoryHash)
            infusionCategoryHashes = try? container.decode([UInt32].self, forKey: CodingKeys.infusionCategoryHashes)
            infusionCategoryName = try? container.decode(String.self, forKey: CodingKeys.infusionCategoryName)
            itemLevels = try? container.decode([Int32].self, forKey: CodingKeys.itemLevels)
            progressionLevelRequirementHash = try? container.decode(UInt32.self, forKey: CodingKeys.progressionLevelRequirementHash)
            qualityLevel = try? container.decode(Int32.self, forKey: CodingKeys.qualityLevel)
            versions = try? container.decode([Destiny.Definitions.DestinyItemVersionDefinition].self, forKey: CodingKeys.versions)
        }
    }
}
