// This File was auto generated by BungoKitGen
//
// File: DestinyNodeSocketReplaceResponse.swift

import Foundation

public extension Destiny.Definitions {
    /// This is a bit of an odd duck. Apparently, if talent nodes steps have this data, the game will go through on step activation and alter the first Socket it finds on the item that has a type matching the given socket type, inserting the indicated plug item.
    struct DestinyNodeSocketReplaceResponse: Codable {
        /// The hash identifier of the plug item that will be inserted into the socket found.
        public var plugItemHash: UInt32?
        /// The hash identifier of the socket type to find amidst the item's sockets (the item to which this talent grid is attached). See DestinyInventoryItemDefinition.sockets.socketEntries to find the socket type of sockets on the item in question.
        public var socketTypeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case plugItemHash
            case socketTypeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            plugItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.plugItemHash)
            socketTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.socketTypeHash)
        }
    }
}
