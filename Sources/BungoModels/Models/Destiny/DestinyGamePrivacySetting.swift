// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyGamePrivacySetting.swift

import Foundation

public extension Destiny {
    /// A player can choose to restrict requests to join their Fireteam to specific states. These are the possible states a user can choose.
    enum DestinyGamePrivacySetting: Int32, Codable {
        case open = 0
        case clanAndFriendsOnly = 1
        case friendsOnly = 2
        case invitationOnly = 3
        case closed = 4
    }
}
