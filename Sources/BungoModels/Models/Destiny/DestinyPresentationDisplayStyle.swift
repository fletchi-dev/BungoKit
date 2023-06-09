// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPresentationDisplayStyle.swift

import Foundation

public extension Destiny {
    /// A hint for how the presentation node should be displayed when shown in a list. How you use this is your UI is up to you.
    enum DestinyPresentationDisplayStyle: Int32, Codable {
        /// Display the item as a category, through which sub-items are filtered.
        case category = 0
        case badge = 1
        case medals = 2
        case collectible = 3
        case record = 4
        case seasonalTriumph = 5
        case guardianRank = 6
    }
}
