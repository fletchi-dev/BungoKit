// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyClassDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Defines a Character Class in Destiny 2. These are types of characters you can play, like Titan, Warlock, and Hunter.
    struct DestinyClassDefinition: Codable {
        /// In Destiny 1, we added a convenience Enumeration for referring to classes. We've kept it, though mostly for posterity. This is the enum value for this definition's class.
        public var classType: Destiny.DestinyClass?

        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// A localized string referring to the singular form of the Class's name when referred to in gendered form. Keyed by the DestinyGender.
        public var genderedClassNames: [Int32: String]?

        public var genderedClassNamesByGenderHash: [UInt32: String]?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// Mentors don't really mean anything anymore. Don't expect this to be populated.
        public var mentorVendorHash: UInt32?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case classType
            case displayProperties
            case genderedClassNames
            case genderedClassNamesByGenderHash
            case hash
            case index
            case mentorVendorHash
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            classType = try? container.decode(Destiny.DestinyClass.self, forKey: CodingKeys.classType)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            let rawgenderedClassNames = try? container.decode([String: String].self, forKey: CodingKeys.genderedClassNames)
            genderedClassNames = rawgenderedClassNames?.compactMapKeys { key, _ -> Int32? in
                Int32(key)
            }
            let rawgenderedClassNamesByGenderHash = try? container.decode([String: String].self, forKey: CodingKeys.genderedClassNamesByGenderHash)
            genderedClassNamesByGenderHash = rawgenderedClassNamesByGenderHash?.compactMapKeys { key, _ -> UInt32? in
                UInt32(key)
            }
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            mentorVendorHash = try? container.decode(UInt32.self, forKey: CodingKeys.mentorVendorHash)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
