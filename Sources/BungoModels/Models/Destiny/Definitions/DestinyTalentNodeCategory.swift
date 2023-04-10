// This File was auto generated by BungoKitGen
//
// File: DestinyTalentNodeCategory.swift

import Foundation

public extension Destiny.Definitions {
    /// An artificial construct provided by Bungie.Net, where we attempt to group talent nodes by functionality.
    /// This is a single set of references to Talent Nodes that share a common trait or purpose.
    struct DestinyTalentNodeCategory: Codable {
        /// Will contain at least the "name", which will be the title of the category. We will likely not have description and an icon yet, but I'm going to keep my options open.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        /// Mostly just for debug purposes, but if you find it useful you can have it. This is BNet's manually created identifier for this category.
        public var identifier: String?
        /// If true, we found the localized content in a related DestinyLoreDefinition instead of local BNet localization files. This is mostly for ease of my own future investigations.
        public var isLoreDriven: Bool?
        /// The set of all hash identifiers for Talent Nodes (DestinyTalentNodeDefinition) in this Talent Grid that are part of this Category.
        public var nodeHashes: [UInt32]?

        public enum CodingKeys: String, CodingKey {
            case displayProperties
            case identifier
            case isLoreDriven
            case nodeHashes
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            identifier = try? container.decode(String.self, forKey: CodingKeys.identifier)
            isLoreDriven = try? container.decode(Bool.self, forKey: CodingKeys.isLoreDriven)
            nodeHashes = try? container.decode([UInt32].self, forKey: CodingKeys.nodeHashes)
        }
    }
}
