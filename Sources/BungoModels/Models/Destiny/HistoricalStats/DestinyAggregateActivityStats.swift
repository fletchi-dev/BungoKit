// This File was auto generated by BungoKitGen
//
// File: DestinyAggregateActivityStats.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyAggregateActivityStats: Codable {
        /// Hash ID that can be looked up in the DestinyActivityTable.
        public var activityHash: UInt32?
        /// Collection of stats for the player in this activity.
        public var values: [String: Destiny.HistoricalStats.DestinyHistoricalStatsValue]?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case values
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            values = try? container.decode([String: Destiny.HistoricalStats.DestinyHistoricalStatsValue].self, forKey: CodingKeys.values)
        }
    }
}
