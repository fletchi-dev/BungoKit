// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemSocketCategoryDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Sockets are grouped into categories in the UI. These define which category and which sockets are under that category.
    struct DestinyItemSocketCategoryDefinition: Codable {
        /// The hash for the Socket Category: a quick way to go get the header display information for the category. Use it to look up DestinySocketCategoryDefinition info.
        public var socketCategoryHash: UInt32?

        /// Use these indexes to look up the sockets in the "sockets.socketEntries" property on the item definition. These are the indexes under the category, in game-rendered order.
        public var socketIndexes: [Int32]?

        public enum CodingKeys: String, CodingKey {
            case socketCategoryHash
            case socketIndexes
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            socketCategoryHash = try? container.decode(UInt32.self, forKey: CodingKeys.socketCategoryHash)
            socketIndexes = try? container.decode([Int32].self, forKey: CodingKeys.socketIndexes)
        }
    }
}
