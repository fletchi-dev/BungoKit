// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyCraftablesComponent.swift

import Foundation

public extension Destiny.Components.Craftables {
    struct DestinyCraftablesComponent: Codable {
        /// A map of craftable item hashes to craftable item state components.
        public var craftables: [UInt32: Destiny.Components.Craftables.DestinyCraftableComponent]?

        /// The hash for the root presentation node definition of craftable item categories.
        public var craftingRootNodeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case craftables
            case craftingRootNodeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let rawcraftables = try? container.decode([String: Destiny.Components.Craftables.DestinyCraftableComponent].self, forKey: CodingKeys.craftables)
            craftables = rawcraftables?.compactMapKeys { key, _ -> UInt32? in
                UInt32(key)
            }
            craftingRootNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.craftingRootNodeHash)
        }
    }
}
