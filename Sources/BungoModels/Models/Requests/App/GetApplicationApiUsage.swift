// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetApplicationApiUsage.swift

import Foundation

public extension Requests.App {
    /// Get API usage by application for time frame specified. You can go as far back as 30 days ago, and can ask for up to a 48 hour window of time in a single request. You must be authenticated with at least the ReadUserData permission to access this endpoint.
    struct GetApplicationApiUsageRequest: BungoRequest {
        public typealias Response = Applications.ApiUsage

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(applicationId: Int32) {
                query = [:]
                path = [:]

                path["applicationId"] = "\(applicationId)"
            }
        }

        public let path = "/App/ApiUsage/{applicationId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
