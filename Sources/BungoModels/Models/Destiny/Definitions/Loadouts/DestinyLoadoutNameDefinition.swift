// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLoadoutNameDefinition.swift

import Foundation

public extension Destiny.Definitions.Loadouts {
    struct DestinyLoadoutNameDefinition: Codable {
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        public var name: String?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case hash
            case index
            case name
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
