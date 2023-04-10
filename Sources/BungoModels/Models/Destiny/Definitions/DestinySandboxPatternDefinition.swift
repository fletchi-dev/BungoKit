// This File was auto generated by BungoKitGen
//
// File: DestinySandboxPatternDefinition.swift

import Foundation

public extension Destiny.Definitions {
    struct DestinySandboxPatternDefinition: Codable {
        public var filters: [Destiny.Definitions.DestinyArrangementRegionFilterDefinition]?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        public var patternGlobalTagIdHash: UInt32?
        public var patternHash: UInt32?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        public var weaponContentGroupHash: UInt32?
        public var weaponTranslationGroupHash: UInt32?
        public var weaponType: Destiny.DestinyItemSubType?
        public var weaponTypeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case filters
            case hash
            case index
            case patternGlobalTagIdHash
            case patternHash
            case redacted
            case weaponContentGroupHash
            case weaponTranslationGroupHash
            case weaponType
            case weaponTypeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            filters = try? container.decode([Destiny.Definitions.DestinyArrangementRegionFilterDefinition].self, forKey: CodingKeys.filters)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            patternGlobalTagIdHash = try? container.decode(UInt32.self, forKey: CodingKeys.patternGlobalTagIdHash)
            patternHash = try? container.decode(UInt32.self, forKey: CodingKeys.patternHash)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            weaponContentGroupHash = try? container.decode(UInt32.self, forKey: CodingKeys.weaponContentGroupHash)
            weaponTranslationGroupHash = try? container.decode(UInt32.self, forKey: CodingKeys.weaponTranslationGroupHash)
            weaponType = try? container.decode(Destiny.DestinyItemSubType.self, forKey: CodingKeys.weaponType)
            weaponTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.weaponTypeHash)
        }
    }
}
