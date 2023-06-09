// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorInteractionRewardSelection.swift

import Foundation

public extension Destiny {
    /// When a Vendor Interaction provides rewards, they'll either let you choose one or let you have all of them. This determines which it will be.
    enum DestinyVendorInteractionRewardSelection: Int32, Codable {
        case none = 0
        case one = 1
        case all = 2
    }
}
