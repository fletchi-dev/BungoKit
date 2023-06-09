// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetPartnerRewardHistory.swift

import Foundation

public extension Requests.Tokens {
    /// Returns the partner rewards history of the targeted user, both partner offers and Twitch drops.
    struct GetPartnerRewardHistoryRequest: BungoRequest {
        public typealias Response = Tokens.PartnerRewardHistoryResponse

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

        public let path = "/Tokens/Partner/History/{targetBnetMembershipId}/Application/{partnerApplicationId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
