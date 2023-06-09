// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: VendorInteractionType.swift

import Foundation

public extension Destiny {
    /// An enumeration of the known UI interactions for Vendors.
    enum VendorInteractionType: Int32, Codable {
        case unknown = 0
        /// An empty interaction. If this ends up in content, it is probably a game bug.
        case undefined = 1
        /// An interaction shown when you complete a quest and receive a reward.
        case questComplete = 2
        /// An interaction shown when you talk to a Vendor as an intermediary step of a quest.
        case questContinue = 3
        /// An interaction shown when you are previewing the vendor's reputation rewards.
        case reputationPreview = 4
        /// An interaction shown when you rank up with the vendor.
        case rankUpReward = 5
        /// An interaction shown when you have tokens to turn in for the vendor.
        case tokenTurnIn = 6
        /// An interaction shown when you're accepting a new quest.
        case questAccept = 7
        /// Honestly, this doesn't seem consistent to me. It is used to give you choices in the Cryptarch as well as some reward prompts by the Eververse vendor. I'll have to look into that further at some point.
        case progressTab = 8
        /// These seem even less consistent. I don't know what these are.
        case end = 9
        /// Also seem inconsistent. I also don't know what these are offhand.
        case start = 10
    }
}
