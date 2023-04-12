// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetPostGameCarnageReport.swift

import Foundation

public extension Requests.Destiny2 {
    /// Gets the available post game carnage report for the activity ID.
    struct GetPostGameCarnageReportRequest: BungoRequest {
        public typealias Response = Destiny.HistoricalStats.DestinyPostGameCarnageReportData

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(activityId: Int64) {
                query = [:]
                path = [:]

                path["activityId"] = "\(activityId)"
            }
        }

        public let path = "/Destiny2/Stats/PostGameCarnageReport/{activityId}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
