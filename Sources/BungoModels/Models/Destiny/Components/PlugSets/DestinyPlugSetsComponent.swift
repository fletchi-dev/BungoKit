// This File was auto generated by BungoKitGen
//
// File: DestinyPlugSetsComponent.swift

import Foundation

public extension Destiny.Components.PlugSets {
    /// Sockets may refer to a "Plug Set": a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
    /// This is the set of those plugs that we came across in the users' inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused)
    struct DestinyPlugSetsComponent: Codable {
        /// The shared list of plugs for each relevant PlugSet, keyed by the hash identifier of the PlugSet (DestinyPlugSetDefinition).
        public var plugs: [Int: [Destiny.Sockets.DestinyItemPlug]]?

        public enum CodingKeys: String, CodingKey {
            case plugs
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            plugs = try? container.decode([Int: [Destiny.Sockets.DestinyItemPlug]].self, forKey: CodingKeys.plugs)
        }
    }
}
