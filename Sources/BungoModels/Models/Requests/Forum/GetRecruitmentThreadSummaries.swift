// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetRecruitmentThreadSummaries.swift

import AnyCodable
import Foundation
public extension Requests.Forum {
    /// Allows the caller to get a list of to 25 recruitment thread summary information objects.
    struct GetRecruitmentThreadSummariesRequest: BungoRequest {
        public typealias Response = AnyCodable

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init() {
                query = [:]
                path = [:]
            }
        }

        public let path = "/Forum/Recruit/Summaries/"
        public let parameters: Parameters
        public let method: HTTPMethod = .post
        public let successStatus: Int = 200

        public init() {
            parameters = .init()
        }
    }
}
