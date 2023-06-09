// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyCharacterCustomization.swift

import Foundation

public extension Destiny.Character {
    /// Raw data about the customization options chosen for a character's face and appearance.
    /// You can look up the relevant class/race/gender combo in DestinyCharacterCustomizationOptionDefinition for the character, and then look up these values within the CustomizationOptions found to pull some data about their choices. Warning: not all of that data is meaningful. Some data has useful icons. Others have nothing, and are only meant for 3D rendering purposes (which we sadly do not expose yet)
    struct DestinyCharacterCustomization: Codable {
        public var decalColor: UInt32?

        public var decalIndex: Int32?

        public var eyeColor: UInt32?

        public var face: UInt32?

        public var featureColors: [UInt32]?

        public var featureIndex: Int32?

        public var hairColors: [UInt32]?

        public var hairIndex: Int32?

        public var lipColor: UInt32?

        public var personality: UInt32?

        public var skinColor: UInt32?

        public var wearHelmet: Bool?

        public enum CodingKeys: String, CodingKey {
            case decalColor
            case decalIndex
            case eyeColor
            case face
            case featureColors
            case featureIndex
            case hairColors
            case hairIndex
            case lipColor
            case personality
            case skinColor
            case wearHelmet
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            decalColor = try? container.decode(UInt32.self, forKey: CodingKeys.decalColor)
            decalIndex = try? container.decode(Int32.self, forKey: CodingKeys.decalIndex)
            eyeColor = try? container.decode(UInt32.self, forKey: CodingKeys.eyeColor)
            face = try? container.decode(UInt32.self, forKey: CodingKeys.face)
            featureColors = try? container.decode([UInt32].self, forKey: CodingKeys.featureColors)
            featureIndex = try? container.decode(Int32.self, forKey: CodingKeys.featureIndex)
            hairColors = try? container.decode([UInt32].self, forKey: CodingKeys.hairColors)
            hairIndex = try? container.decode(Int32.self, forKey: CodingKeys.hairIndex)
            lipColor = try? container.decode(UInt32.self, forKey: CodingKeys.lipColor)
            personality = try? container.decode(UInt32.self, forKey: CodingKeys.personality)
            skinColor = try? container.decode(UInt32.self, forKey: CodingKeys.skinColor)
            wearHelmet = try? container.decode(Bool.self, forKey: CodingKeys.wearHelmet)
        }
    }
}
