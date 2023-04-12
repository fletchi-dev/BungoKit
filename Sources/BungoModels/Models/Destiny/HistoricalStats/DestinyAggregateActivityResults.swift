// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyAggregateActivityResults.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyAggregateActivityResults: Codable {
        /// List of all activities the player has participated in.
        public var activities: [Destiny.HistoricalStats.DestinyAggregateActivityStats]?

        public enum CodingKeys: String, CodingKey {
            case activities
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activities = try? container.decode([Destiny.HistoricalStats.DestinyAggregateActivityStats].self, forKey: CodingKeys.activities)
        }
    }
}
