// This File was auto generated by BungoKitGen
//
// File: SearchDestinyPlayerByBungieName.swift

import AnyCodable
import Foundation
public extension Requests.Destiny2 {
    /// Returns a list of Destiny memberships given a global Bungie Display Name. This method will hide overridden memberships due to cross save.
    struct SearchDestinyPlayerByBungieNameRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(membershipType: BungieMembershipType) {
                query = [:]
                path = [:]

                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/SearchDestinyPlayerByBungieName/{membershipType}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
