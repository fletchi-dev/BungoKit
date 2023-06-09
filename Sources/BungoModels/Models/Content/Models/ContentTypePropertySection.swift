// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ContentTypePropertySection.swift

import Foundation

public extension Content.Models {
    struct ContentTypePropertySection: Codable {
        public var collapsed: Bool?

        public var name: String?

        public var readableName: String?

        public enum CodingKeys: String, CodingKey {
            case collapsed
            case name
            case readableName
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            collapsed = try? container.decode(Bool.self, forKey: CodingKeys.collapsed)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            readableName = try? container.decode(String.self, forKey: CodingKeys.readableName)
        }
    }
}
