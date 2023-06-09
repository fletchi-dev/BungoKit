// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ApplicationStatus.swift

import Foundation

public extension Applications {
    enum ApplicationStatus: Int32, Codable {
        /// No value assigned
        case none = 0
        /// Application exists and works but will not appear in any public catalog. New applications start in this state, test applications will remain in this state.
        case `private` = 1
        /// Active applications that can appear in an catalog.
        case `public` = 2
        /// Application disabled by the owner. All authorizations will be treated as terminated while in this state. Owner can move back to private or public state.
        case disabled = 3
        /// Application has been blocked by Bungie. It cannot be transitioned out of this state by the owner. Authorizations are terminated when an application is in this state.
        case blocked = 4
    }
}
