// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyScope.swift

import Foundation

public extension Destiny {
    /// There's a lot of places where we need to know scope on more than just a profile or character level. For everything else, there's this more generic sense of scope.
    enum DestinyScope: Int32, Codable {
        case profile = 0
        case character = 1
    }
}
