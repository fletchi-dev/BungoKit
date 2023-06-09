// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemSourceBlockDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Data about an item's "sources": ways that the item can be obtained.
    struct DestinyItemSourceBlockDefinition: Codable {
        /// If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform.
        public var exclusive: BungieMembershipType?

        /// The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition).
        public var sourceHashes: [UInt32]?

        /// A collection of details about the stats that were computed for the ways we found that the item could be spawned.
        public var sources: [Destiny.Definitions.Sources.DestinyItemSourceDefinition]?

        /// A denormalized reference back to vendors that potentially sell this item.
        public var vendorSources: [Destiny.Definitions.DestinyItemVendorSourceReference]?

        public enum CodingKeys: String, CodingKey {
            case exclusive
            case sourceHashes
            case sources
            case vendorSources
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            exclusive = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.exclusive)
            sourceHashes = try? container.decode([UInt32].self, forKey: CodingKeys.sourceHashes)
            sources = try? container.decode([Destiny.Definitions.Sources.DestinyItemSourceDefinition].self, forKey: CodingKeys.sources)
            vendorSources = try? container.decode([Destiny.Definitions.DestinyItemVendorSourceReference].self, forKey: CodingKeys.vendorSources)
        }
    }
}
