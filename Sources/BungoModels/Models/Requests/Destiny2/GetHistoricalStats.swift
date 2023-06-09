// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetHistoricalStats.swift

import Foundation

public extension Requests.Destiny2 {
    /// Gets historical stats for indicated character.
    struct GetHistoricalStatsRequest: BungoRequest {
        public typealias Response = Destiny.HistoricalStats.DestinyHistoricalStatsResults

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(characterId: Int64, destinyMembershipId: Int64, membershipType: BungieMembershipType, groups: Destiny.HistoricalStats.Definitions.DestinyStatsGroupType..., modes: Destiny.HistoricalStats.Definitions.DestinyActivityModeType..., periodType: Destiny.HistoricalStats.Definitions.PeriodType? = nil) {
                query = [:]
                path = [:]

                query["groups"] = "\(groups.map { "\($0.rawValue)" }.joined(separator: ","))"
                query["modes"] = "\(modes.map { "\($0.rawValue)" }.joined(separator: ","))"
                if let periodType {
                    query["periodType"] = "\(periodType.rawValue)"
                }

                path["characterId"] = "\(characterId)"
                path["destinyMembershipId"] = "\(destinyMembershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
