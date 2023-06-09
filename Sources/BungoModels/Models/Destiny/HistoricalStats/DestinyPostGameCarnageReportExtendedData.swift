// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPostGameCarnageReportExtendedData.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyPostGameCarnageReportExtendedData: Codable {
        /// Collection of stats for the player in this activity.
        public var values: [String: Destiny.HistoricalStats.DestinyHistoricalStatsValue]?

        /// List of weapons and their perspective values.
        public var weapons: [Destiny.HistoricalStats.DestinyHistoricalWeaponStats]?

        public enum CodingKeys: String, CodingKey {
            case values
            case weapons
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            values = try? container.decode([String: Destiny.HistoricalStats.DestinyHistoricalStatsValue].self, forKey: CodingKeys.values)
            weapons = try? container.decode([Destiny.HistoricalStats.DestinyHistoricalWeaponStats].self, forKey: CodingKeys.weapons)
        }
    }
}
