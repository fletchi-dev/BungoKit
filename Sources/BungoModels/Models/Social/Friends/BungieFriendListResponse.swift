// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: BungieFriendListResponse.swift

import Foundation

public extension Social.Friends {
    struct BungieFriendListResponse: Codable {
        public var friends: [Social.Friends.BungieFriend]?

        public enum CodingKeys: String, CodingKey {
            case friends
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            friends = try? container.decode([Social.Friends.BungieFriend].self, forKey: CodingKeys.friends)
        }
    }
}
