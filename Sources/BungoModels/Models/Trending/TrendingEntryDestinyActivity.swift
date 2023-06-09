// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: TrendingEntryDestinyActivity.swift

import Foundation

public extension Trending {
    struct TrendingEntryDestinyActivity: Codable {
        public var activityHash: UInt32?

        public var status: Destiny.Activities.DestinyPublicActivityStatus?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case status
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            status = try? container.decode(Destiny.Activities.DestinyPublicActivityStatus.self, forKey: CodingKeys.status)
        }
    }
}
