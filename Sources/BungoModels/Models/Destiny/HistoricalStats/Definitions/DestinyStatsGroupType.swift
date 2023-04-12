// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyStatsGroupType.swift

import Foundation

public extension Destiny.HistoricalStats.Definitions {
    /// If the enum value is > 100, it is a "special" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
    enum DestinyStatsGroupType: Int32, Codable {
        case none = 0
        case general = 1
        case weapons = 2
        case medals = 3
        /// This is purely to serve as the dividing line between filterable and un-filterable groups. Below this number is a group you can pass as a filter. Above it are groups used in very specific circumstances and not relevant for filtering.
        case reservedGroups = 100
        /// Only applicable while generating leaderboards.
        case leaderboard = 101
        /// These will *only* be consumed by GetAggregateStatsByActivity
        case activity = 102
        /// These are only consumed and returned by GetUniqueWeaponHistory
        case uniqueWeapon = 103
        case `internal` = 104
    }
}
