// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLoadoutComponent.swift

import Foundation

public extension Destiny.Components.Loadouts {
    struct DestinyLoadoutComponent: Codable {
        public var colorHash: UInt32?

        public var iconHash: UInt32?

        public var items: [Destiny.Components.Loadouts.DestinyLoadoutItemComponent]?

        public var nameHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case colorHash
            case iconHash
            case items
            case nameHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            colorHash = try? container.decode(UInt32.self, forKey: CodingKeys.colorHash)
            iconHash = try? container.decode(UInt32.self, forKey: CodingKeys.iconHash)
            items = try? container.decode([Destiny.Components.Loadouts.DestinyLoadoutItemComponent].self, forKey: CodingKeys.items)
            nameHash = try? container.decode(UInt32.self, forKey: CodingKeys.nameHash)
        }
    }
}
