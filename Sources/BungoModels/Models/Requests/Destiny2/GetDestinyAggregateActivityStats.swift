// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetDestinyAggregateActivityStats.swift

import Foundation

public extension Requests.Destiny2 {
    /// Gets all activities the character has participated in together with aggregate statistics for those activities.
    struct GetDestinyAggregateActivityStatsRequest: BungoRequest {
        public typealias Response = Destiny.HistoricalStats.DestinyAggregateActivityResults

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(characterId: Int64, destinyMembershipId: Int64, membershipType: BungieMembershipType) {
                query = [:]
                path = [:]

                path["characterId"] = "\(characterId)"
                path["destinyMembershipId"] = "\(destinyMembershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/AggregateActivityStats/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
