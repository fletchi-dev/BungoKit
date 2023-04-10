// This File was auto generated by BungoKitGen
//
// File: AwaProvideAuthorizationResult.swift

import Foundation

public extension Requests.Destiny2 {
    /// Provide the result of the user interaction. Called by the Bungie Destiny App to approve or reject a request.
    struct AwaProvideAuthorizationResultRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/Destiny2/Awa/AwaProvideAuthorizationResult/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
