// This File was auto generated by BungieAPIGen
//
// HostGuidedGamesPermissionLevel.swift

import Foundation

public extension GroupsV2 {
    /// Used for setting the guided game permission level override (admins and founders can always host guided games).
    enum HostGuidedGamesPermissionLevel: Int32, Codable {
        case none = 0
        case beginner = 1
        case member = 2
    }
}
