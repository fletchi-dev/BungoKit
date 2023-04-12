// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorDisplayPropertiesDefinition.swift

import Foundation

public extension Destiny.Definitions {
    struct DestinyVendorDisplayPropertiesDefinition: Codable {
        public var description: String?

        public var hasIcon: Bool?

        /// If this item has a high-res icon (at least for now, many things won't), then the path to that icon will be here.
        public var highResIcon: String?

        /// Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
        /// But usually, it will be a small square image that you can use as... well, an icon.
        /// They are currently represented as 96px x 96px images.
        public var icon: String?

        public var iconSequences: [Destiny.Definitions.Common.DestinyIconSequenceDefinition]?

        /// I regret calling this a "large icon". It's more like a medium-sized image with a picture of the vendor's mug on it, trying their best to look cool. Not what one would call an icon.
        public var largeIcon: String?

        /// This is apparently the "Watermark". I am not certain offhand where this is actually used in the Game UI, but some people may find it useful.
        public var largeTransparentIcon: String?

        /// This is the icon used in the map overview, when the vendor is located on the map.
        public var mapIcon: String?

        public var name: String?

        /// If we replaced the icon with something more glitzy, this is the original icon that the vendor had according to the game's content. It may be more lame and/or have less razzle-dazzle. But who am I to tell you which icon to use.
        public var originalIcon: String?

        /// Vendors, in addition to expected display property data, may also show some "common requirements" as statically defined definition data. This might be when a vendor accepts a single type of currency, or when the currency is unique to the vendor and the designers wanted to show that currency when you interact with the vendor.
        public var requirementsDisplay: [Destiny.Definitions.DestinyVendorRequirementDisplayEntryDefinition]?

        /// This is the icon used in parts of the game UI such as the vendor's waypoint.
        public var smallTransparentIcon: String?

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case description
            case hasIcon
            case highResIcon
            case icon
            case iconSequences
            case largeIcon
            case largeTransparentIcon
            case mapIcon
            case name
            case originalIcon
            case requirementsDisplay
            case smallTransparentIcon
            case subtitle
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            description = try? container.decode(String.self, forKey: CodingKeys.description)
            hasIcon = try? container.decode(Bool.self, forKey: CodingKeys.hasIcon)
            highResIcon = try? container.decode(String.self, forKey: CodingKeys.highResIcon)
            icon = try? container.decode(String.self, forKey: CodingKeys.icon)
            iconSequences = try? container.decode([Destiny.Definitions.Common.DestinyIconSequenceDefinition].self, forKey: CodingKeys.iconSequences)
            largeIcon = try? container.decode(String.self, forKey: CodingKeys.largeIcon)
            largeTransparentIcon = try? container.decode(String.self, forKey: CodingKeys.largeTransparentIcon)
            mapIcon = try? container.decode(String.self, forKey: CodingKeys.mapIcon)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            originalIcon = try? container.decode(String.self, forKey: CodingKeys.originalIcon)
            requirementsDisplay = try? container.decode([Destiny.Definitions.DestinyVendorRequirementDisplayEntryDefinition].self, forKey: CodingKeys.requirementsDisplay)
            smallTransparentIcon = try? container.decode(String.self, forKey: CodingKeys.smallTransparentIcon)
            subtitle = try? container.decode(String.self, forKey: CodingKeys.subtitle)
        }
    }
}
