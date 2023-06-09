// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ContentPreview.swift

import Foundation

public extension Content.Models {
    struct ContentPreview: Codable {
        public var itemInSet: Bool?

        public var name: String?

        public var path: String?

        public var setNesting: Int32?

        public var setTag: String?

        public var useSetId: Int32?

        public enum CodingKeys: String, CodingKey {
            case itemInSet
            case name
            case path
            case setNesting
            case setTag
            case useSetId
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            itemInSet = try? container.decode(Bool.self, forKey: CodingKeys.itemInSet)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            path = try? container.decode(String.self, forKey: CodingKeys.path)
            setNesting = try? container.decode(Int32.self, forKey: CodingKeys.setNesting)
            setTag = try? container.decode(String.self, forKey: CodingKeys.setTag)
            useSetId = try? container.decode(Int32.self, forKey: CodingKeys.useSetId)
        }
    }
}
