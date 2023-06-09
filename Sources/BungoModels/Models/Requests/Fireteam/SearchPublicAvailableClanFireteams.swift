// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: SearchPublicAvailableClanFireteams.swift

import Foundation

public extension Requests.Fireteam {
    /// Gets a listing of all public fireteams starting now with open slots. Caller is not checked for join criteria so caching is maximized.
    struct SearchPublicAvailableClanFireteamsRequest: BungoRequest {
        public typealias Response = SearchResultOfFireteamSummary

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(activityType: Int32, dateRange: Fireteam.FireteamDateRange, page: Int32, platform: Fireteam.FireteamPlatform, slotFilter: Fireteam.FireteamSlotSearch, excludeImmediate: Bool? = nil, langFilter: String? = nil) {
                query = [:]
                path = [:]

                if let excludeImmediate {
                    query["excludeImmediate"] = "\(excludeImmediate)"
                }
                if let langFilter {
                    query["langFilter"] = "\(langFilter)"
                }

                path["activityType"] = "\(activityType)"
                path["dateRange"] = "\(dateRange.rawValue)"
                path["page"] = "\(page)"
                path["platform"] = "\(platform.rawValue)"
                path["slotFilter"] = "\(slotFilter.rawValue)"
            }
        }

        public let path = "/Fireteam/Search/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{page}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
