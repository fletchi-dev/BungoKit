// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: IgnoreStatus.swift

import Foundation

public extension Ignores {
    enum IgnoreStatus: Int32, Codable {
        case notIgnored = 0
        case ignoredUser = 1
        case ignoredGroup = 2
        case ignoredByGroup = 4
        case ignoredPost = 8
        case ignoredTag = 16
        case ignoredGlobal = 32
    }
}
