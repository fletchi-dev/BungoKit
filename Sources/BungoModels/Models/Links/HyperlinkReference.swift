// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: HyperlinkReference.swift

import Foundation

public extension Links {
    struct HyperlinkReference: Codable {
        public var title: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case title
            case url
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            title = try? container.decode(String.self, forKey: CodingKeys.title)
            url = try? container.decode(String.self, forKey: CodingKeys.url)
        }
    }
}
