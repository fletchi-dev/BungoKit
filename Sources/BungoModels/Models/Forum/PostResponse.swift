// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: PostResponse.swift

import Foundation

public extension Forum {
    struct PostResponse: Codable {
        public var isPinned: Bool?

        public var ignoreStatus: Ignores.IgnoreResponse?

        public var isActive: Bool?

        public var isAnnouncement: Bool?

        public var lastReplyTimestamp: Date?

        public var latestReplyAuthorId: Int64?

        public var latestReplyPostId: Int64?

        public var locale: String?

        public var popularity: Forum.ForumPostPopularity?

        public var thumbnail: String?

        public var urlMediaType: Forum.ForumMediaType?

        public var userHasMutedPost: Bool?

        public var userHasRated: Bool?

        public var userRating: Int32?

        public enum CodingKeys: String, CodingKey {
            case isPinned = "IsPinned"
            case ignoreStatus
            case isActive
            case isAnnouncement
            case lastReplyTimestamp
            case latestReplyAuthorId
            case latestReplyPostId
            case locale
            case popularity
            case thumbnail
            case urlMediaType
            case userHasMutedPost
            case userHasRated
            case userRating
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            isPinned = try? container.decode(Bool.self, forKey: CodingKeys.isPinned)
            ignoreStatus = try? container.decode(Ignores.IgnoreResponse.self, forKey: CodingKeys.ignoreStatus)
            isActive = try? container.decode(Bool.self, forKey: CodingKeys.isActive)
            isAnnouncement = try? container.decode(Bool.self, forKey: CodingKeys.isAnnouncement)
            lastReplyTimestamp = try? container.decode(Date.self, forKey: CodingKeys.lastReplyTimestamp)
            let latestReplyAuthorId = try? container.decode(String.self, forKey: CodingKeys.latestReplyAuthorId)
            if let latestReplyAuthorId, let latestReplyAuthorIdInt = Int64(latestReplyAuthorId) {
                self.latestReplyAuthorId = latestReplyAuthorIdInt
            } else {
                self.latestReplyAuthorId = nil
            }
            let latestReplyPostId = try? container.decode(String.self, forKey: CodingKeys.latestReplyPostId)
            if let latestReplyPostId, let latestReplyPostIdInt = Int64(latestReplyPostId) {
                self.latestReplyPostId = latestReplyPostIdInt
            } else {
                self.latestReplyPostId = nil
            }
            locale = try? container.decode(String.self, forKey: CodingKeys.locale)
            popularity = try? container.decode(Forum.ForumPostPopularity.self, forKey: CodingKeys.popularity)
            thumbnail = try? container.decode(String.self, forKey: CodingKeys.thumbnail)
            urlMediaType = try? container.decode(Forum.ForumMediaType.self, forKey: CodingKeys.urlMediaType)
            userHasMutedPost = try? container.decode(Bool.self, forKey: CodingKeys.userHasMutedPost)
            userHasRated = try? container.decode(Bool.self, forKey: CodingKeys.userHasRated)
            userRating = try? container.decode(Int32.self, forKey: CodingKeys.userRating)
        }
    }
}
