// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinySeasonPreviewImageDefinition.swift

import Foundation

public extension Destiny.Definitions.Seasons {
    /// Defines the thumbnail icon, high-res image, and video link for promotional images
    struct DestinySeasonPreviewImageDefinition: Codable {
        /// An optional path to a high-resolution image, probably 1920x1080.
        public var highResImage: String?

        /// A thumbnail icon path to preview seasonal content, probably 480x270.
        public var thumbnailImage: String?

        public enum CodingKeys: String, CodingKey {
            case highResImage
            case thumbnailImage
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            highResImage = try? container.decode(String.self, forKey: CodingKeys.highResImage)
            thumbnailImage = try? container.decode(String.self, forKey: CodingKeys.thumbnailImage)
        }
    }
}
