// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetBungieRewardsForPlatformUser.swift

import AnyCodable
import Foundation
public extension Requests.Tokens {
    /// Returns the bungie rewards for the targeted user when a platform membership Id and Type are used.
    struct GetBungieRewardsForPlatformUserRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(membershipId: Int64, membershipType: BungieMembershipType) {
                query = [:]
                path = [:]

                path["membershipId"] = "\(membershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Tokens/Rewards/GetRewardsForPlatformUser/{membershipId}/{membershipType}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
