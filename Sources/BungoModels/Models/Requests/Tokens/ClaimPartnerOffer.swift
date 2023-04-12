// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ClaimPartnerOffer.swift

import Foundation

public extension Requests.Tokens {
    /// Claim a partner offer as the authenticated user.
    struct ClaimPartnerOfferRequest: BungoRequest {
        public typealias Response = Bool

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/Tokens/Partner/ClaimOffer/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init() {
            parameters = .init()
        }
    }
}
