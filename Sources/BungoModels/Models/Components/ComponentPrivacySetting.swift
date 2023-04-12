// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ComponentPrivacySetting.swift

import Foundation

public extension Components {
    /// A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons.
    enum ComponentPrivacySetting: Int32, Codable {
        case none = 0
        case `public` = 1
        case `private` = 2
    }
}
