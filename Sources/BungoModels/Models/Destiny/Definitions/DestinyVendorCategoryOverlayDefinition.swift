// This File was auto generated by BungoKitGen
//
// File: DestinyVendorCategoryOverlayDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// The details of an overlay prompt to show to a user. They are all fairly self-explanatory localized strings that can be shown.
    struct DestinyVendorCategoryOverlayDefinition: Codable {
        public var choiceDescription: String?
        /// If this overlay has a currency item that it features, this is said featured item.
        public var currencyItemHash: UInt32?
        public var description: String?
        public var icon: String?
        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case choiceDescription
            case currencyItemHash
            case description
            case icon
            case title
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            choiceDescription = try? container.decode(String.self, forKey: CodingKeys.choiceDescription)
            currencyItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.currencyItemHash)
            description = try? container.decode(String.self, forKey: CodingKeys.description)
            icon = try? container.decode(String.self, forKey: CodingKeys.icon)
            title = try? container.decode(String.self, forKey: CodingKeys.title)
        }
    }
}
