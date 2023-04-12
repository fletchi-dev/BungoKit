// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: UpdateLoadoutIdentifiers.swift

import Foundation

public extension Requests.Destiny2 {
    /// Update the color, icon, and name of a loadout.
    struct UpdateLoadoutIdentifiersRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/Destiny2/Actions/Loadouts/UpdateLoadoutIdentifiers/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init() {
            parameters = .init()
        }
    }
}
