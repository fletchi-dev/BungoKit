// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyJoinClosedReasons.swift

import Foundation

public extension Destiny {
    /// A Flags enumeration representing the reasons why a person can't join this user's fireteam.
    enum DestinyJoinClosedReasons: Int32, Codable {
        case none = 0
        /// The user is currently in matchmaking.
        case inMatchmaking = 1
        /// The user is currently in a loading screen.
        case loading = 2
        /// The user is in an activity that requires solo play.
        case soloMode = 4
        /// The user can't be joined for one of a variety of internal reasons. Basically, the game can't let you join at this time, but for reasons that aren't under the control of this user.
        case internalReasons = 8
        /// The user's current activity/quest/other transitory game state is preventing joining.
        case disallowedByGameState = 16
        /// The user appears to be offline.
        case offline = 32768
    }
}
