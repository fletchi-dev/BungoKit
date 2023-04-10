// This File was auto generated by BungoKitGen
//
// File: SearchResultOfGroupMembership.swift

import Foundation

public struct SearchResultOfGroupMembership: Codable {
    public var hasMore: Bool?
    public var query: Queries.PagedQuery?
    public var replacementContinuationToken: String?
    public var results: [GroupsV2.GroupMembership]?
    public var totalResults: Int32?
    /// If useTotalResults is true, then totalResults represents an accurate count.
    /// If False, it does not, and may be estimated/only the size of the current page.
    /// Either way, you should probably always only trust hasMore.
    /// This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one.
    public var useTotalResults: Bool?

    public enum CodingKeys: String, CodingKey {
        case hasMore
        case query
        case replacementContinuationToken
        case results
        case totalResults
        case useTotalResults
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        hasMore = try? container.decode(Bool.self, forKey: CodingKeys.hasMore)
        query = try? container.decode(Queries.PagedQuery.self, forKey: CodingKeys.query)
        replacementContinuationToken = try? container.decode(String.self, forKey: CodingKeys.replacementContinuationToken)
        results = try? container.decode([GroupsV2.GroupMembership].self, forKey: CodingKeys.results)
        totalResults = try? container.decode(Int32.self, forKey: CodingKeys.totalResults)
        useTotalResults = try? container.decode(Bool.self, forKey: CodingKeys.useTotalResults)
    }
}
