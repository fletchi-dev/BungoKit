// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetAvailableLocales.swift

import AnyCodable
import Foundation
public extension Requests {
    /// List of available localization cultures
    struct GetAvailableLocalesRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/GetAvailableLocales/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
