// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyDisplayPropertiesDefinition.swift

import Foundation

public extension Destiny.Definitions.Common {
    /// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
    struct DestinyDisplayPropertiesDefinition: Codable {
        public var description: String?

        public var hasIcon: Bool?

        /// If this item has a high-res icon (at least for now, many things won't), then the path to that icon will be here.
        public var highResIcon: String?

        /// Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
        /// But usually, it will be a small square image that you can use as... well, an icon.
        /// They are currently represented as 96px x 96px images.
        public var icon: String?

        public var iconSequences: [Destiny.Definitions.Common.DestinyIconSequenceDefinition]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case description
            case hasIcon
            case highResIcon
            case icon
            case iconSequences
            case name
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            description = try? container.decode(String.self, forKey: CodingKeys.description)
            hasIcon = try? container.decode(Bool.self, forKey: CodingKeys.hasIcon)
            highResIcon = try? container.decode(String.self, forKey: CodingKeys.highResIcon)
            icon = try? container.decode(String.self, forKey: CodingKeys.icon)
            iconSequences = try? container.decode([Destiny.Definitions.Common.DestinyIconSequenceDefinition].self, forKey: CodingKeys.iconSequences)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
        }
    }
}
