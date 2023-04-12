// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: SetQuestTrackedState.swift

import Foundation

public extension Requests.Destiny2 {
    /// Set the Tracking State for an instanced item, if that item is a Quest or Bounty. You must have a valid Destiny Account. Yeah, it's an item.
    struct SetQuestTrackedStateRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/Destiny2/Actions/Items/SetTrackedState/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
