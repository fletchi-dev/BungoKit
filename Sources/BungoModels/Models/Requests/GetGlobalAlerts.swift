// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetGlobalAlerts.swift

import AnyCodable
import Foundation
public extension Requests {
    /// Gets any active global alert for display in the forum banners, help pages, etc. Usually used for DOC alerts.
    struct GetGlobalAlertsRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(includestreaming: Bool? = nil) {
                query = [:]
                path = [:]

                if let includestreaming {
                    query["includestreaming"] = "\(includestreaming)"
                }
            }
        }

        public let path = "/GlobalAlerts/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
