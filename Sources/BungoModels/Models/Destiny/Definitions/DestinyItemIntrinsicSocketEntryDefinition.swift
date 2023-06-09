// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemIntrinsicSocketEntryDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Represents a socket that has a plug associated with it intrinsically. This is useful for situations where the weapon needs to have a visual plug/Mod on it, but that plug/Mod should never change.
    struct DestinyItemIntrinsicSocketEntryDefinition: Codable {
        /// If true, then this socket is visible in the item's "default" state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you're looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see.
        public var defaultVisible: Bool?

        /// Indicates the plug that is intrinsically inserted into this socket.
        public var plugItemHash: UInt32?

        /// Indicates the type of this intrinsic socket.
        public var socketTypeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case defaultVisible
            case plugItemHash
            case socketTypeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            defaultVisible = try? container.decode(Bool.self, forKey: CodingKeys.defaultVisible)
            plugItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.plugItemHash)
            socketTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.socketTypeHash)
        }
    }
}
