// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetUserSystemOverrides.swift

import AnyCodable
import Foundation
public extension Requests {
    /// Get the user-specific system overrides that should be respected alongside common systems.
    struct GetUserSystemOverridesRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/UserSystemOverrides/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init() {
            parameters = .init()
        }
    }
}
