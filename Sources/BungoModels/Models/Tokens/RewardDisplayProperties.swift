// This File was auto generated by BungoKitGen
//
// File: RewardDisplayProperties.swift

import Foundation

public extension Tokens {
    struct RewardDisplayProperties: Codable {
        public var description: String?
        public var imagePath: String?
        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case description = "Description"
            case imagePath = "ImagePath"
            case name = "Name"
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            description = try? container.decode(String.self, forKey: CodingKeys.description)
            imagePath = try? container.decode(String.self, forKey: CodingKeys.imagePath)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
        }
    }
}
