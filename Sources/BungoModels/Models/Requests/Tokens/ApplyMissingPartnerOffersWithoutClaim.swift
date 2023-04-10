// This File was auto generated by BungoKitGen
//
// File: ApplyMissingPartnerOffersWithoutClaim.swift

import Foundation

public extension Requests.Tokens {
    /// Apply a partner offer to the targeted user. This endpoint does not claim a new offer, but any already claimed offers will be applied to the game if not already.
    struct ApplyMissingPartnerOffersWithoutClaimRequest: BungoRequest {
        public typealias Response = Bool

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(partnerApplicationId: Int32, targetBnetMembershipId: Int64) {
                query = [:]
                path = [:]

                path["partnerApplicationId"] = "\(partnerApplicationId)"
                path["targetBnetMembershipId"] = "\(targetBnetMembershipId)"
            }
        }

        public let path = "/Tokens/Partner/ApplyMissingOffers/{partnerApplicationId}/{targetBnetMembershipId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
