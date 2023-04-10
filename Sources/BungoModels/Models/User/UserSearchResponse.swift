// This File was auto generated by BungoKitGen
//
// File: UserSearchResponse.swift

import Foundation

public extension User {
    struct UserSearchResponse: Codable {
        public var hasMore: Bool?
        public var page: Int32?
        public var searchResults: [User.UserSearchResponseDetail]?

        public enum CodingKeys: String, CodingKey {
            case hasMore
            case page
            case searchResults
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            hasMore = try? container.decode(Bool.self, forKey: CodingKeys.hasMore)
            page = try? container.decode(Int32.self, forKey: CodingKeys.page)
            searchResults = try? container.decode([User.UserSearchResponseDetail].self, forKey: CodingKeys.searchResults)
        }
    }
}
