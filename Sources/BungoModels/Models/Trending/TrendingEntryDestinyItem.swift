// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: TrendingEntryDestinyItem.swift

import Foundation

public extension Trending {
    struct TrendingEntryDestinyItem: Codable {
        public var itemHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case itemHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            itemHash = try? container.decode(UInt32.self, forKey: CodingKeys.itemHash)
        }
    }
}
