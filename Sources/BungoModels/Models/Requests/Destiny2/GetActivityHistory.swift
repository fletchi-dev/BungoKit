// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetActivityHistory.swift

import Foundation

public extension Requests.Destiny2 {
    /// Gets activity history stats for indicated character.
    struct GetActivityHistoryRequest: BungoRequest {
        public typealias Response = Destiny.HistoricalStats.DestinyActivityHistoryResults

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(characterId: Int64, destinyMembershipId: Int64, membershipType: BungieMembershipType, count: Int32? = nil, mode: Destiny.HistoricalStats.Definitions.DestinyActivityModeType? = nil, page: Int32? = nil) {
                query = [:]
                path = [:]

                if let count {
                    query["count"] = "\(count)"
                }
                if let mode {
                    query["mode"] = "\(mode.rawValue)"
                }
                if let page {
                    query["page"] = "\(page)"
                }

                path["characterId"] = "\(characterId)"
                path["destinyMembershipId"] = "\(destinyMembershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
