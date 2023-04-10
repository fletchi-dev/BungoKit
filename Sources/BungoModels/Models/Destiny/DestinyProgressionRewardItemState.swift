// This File was auto generated by BungieAPIGen
//
// DestinyProgressionRewardItemState.swift

import Foundation

public extension Destiny {
    /// Represents the different states a progression reward item can be in.
    enum DestinyProgressionRewardItemState: Int32, Codable {
        case none = 0
        /// If this is set, the reward should be hidden.
        case invisible = 1
        /// If this is set, the reward has been earned.
        case earned = 2
        /// If this is set, the reward has been claimed.
        case claimed = 4
        /// If this is set, the reward is allowed to be claimed by this Character. An item can be earned but still can't be claimed in certain circumstances, like if it's only allowed for certain subclasses. It also might not be able to be claimed if you already claimed it!
        case claimAllowed = 8
    }
}
