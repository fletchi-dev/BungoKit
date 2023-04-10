// This File was auto generated by BungoKitGen
//
// File: DestinyActivityHistoryResults.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyActivityHistoryResults: Codable {
        /// List of activities, the most recent activity first.
        public var activities: [Destiny.HistoricalStats.DestinyHistoricalStatsPeriodGroup]?

        public enum CodingKeys: String, CodingKey {
            case activities
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activities = try? container.decode([Destiny.HistoricalStats.DestinyHistoricalStatsPeriodGroup].self, forKey: CodingKeys.activities)
        }
    }
}
