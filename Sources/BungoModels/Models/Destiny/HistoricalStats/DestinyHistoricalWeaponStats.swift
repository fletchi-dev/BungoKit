// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyHistoricalWeaponStats.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyHistoricalWeaponStats: Codable {
        /// The hash ID of the item definition that describes the weapon.
        public var referenceId: UInt32?

        /// Collection of stats for the period.
        public var values: [String: Destiny.HistoricalStats.DestinyHistoricalStatsValue]?

        public enum CodingKeys: String, CodingKey {
            case referenceId
            case values
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            referenceId = try? container.decode(UInt32.self, forKey: CodingKeys.referenceId)
            values = try? container.decode([String: Destiny.HistoricalStats.DestinyHistoricalStatsValue].self, forKey: CodingKeys.values)
        }
    }
}
