// This File was auto generated by BungoKitGen
//
// File: DestinyPowerCapDefinition.swift

import Foundation

public extension Destiny.Definitions.PowerCaps {
    /// Defines a 'power cap' (limit) for gear items, based on the rarity tier and season of release.
    struct DestinyPowerCapDefinition: Codable {
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        /// The raw value for a power cap.
        public var powerCap: Int32?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case hash
            case index
            case powerCap
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            powerCap = try? container.decode(Int32.self, forKey: CodingKeys.powerCap)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
