// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: TrendingEntryCommunityCreation.swift

import Foundation

public extension Trending {
    struct TrendingEntryCommunityCreation: Codable {
        public var author: String?

        public var authorMembershipId: Int64?

        public var body: String?

        public var media: String?

        public var postId: Int64?

        public var title: String?

        public var upvotes: Int32?

        public enum CodingKeys: String, CodingKey {
            case author
            case authorMembershipId
            case body
            case media
            case postId
            case title
            case upvotes
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            author = try? container.decode(String.self, forKey: CodingKeys.author)
            let authorMembershipId = try? container.decode(String.self, forKey: CodingKeys.authorMembershipId)
            if let authorMembershipId, let authorMembershipIdInt = Int64(authorMembershipId) {
                self.authorMembershipId = authorMembershipIdInt
            } else {
                self.authorMembershipId = nil
            }
            body = try? container.decode(String.self, forKey: CodingKeys.body)
            media = try? container.decode(String.self, forKey: CodingKeys.media)
            let postId = try? container.decode(String.self, forKey: CodingKeys.postId)
            if let postId, let postIdInt = Int64(postId) {
                self.postId = postIdInt
            } else {
                self.postId = nil
            }
            title = try? container.decode(String.self, forKey: CodingKeys.title)
            upvotes = try? container.decode(Int32.self, forKey: CodingKeys.upvotes)
        }
    }
}
