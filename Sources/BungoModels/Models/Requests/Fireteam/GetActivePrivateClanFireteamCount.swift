// This File was auto generated by BungoKitGen
//
// File: GetActivePrivateClanFireteamCount.swift

import Foundation

public extension Requests.Fireteam {
    /// Gets a count of all active non-public fireteams for the specified clan. Maximum value returned is 25.
    struct GetActivePrivateClanFireteamCountRequest: BungoRequest {
        public typealias Response = Int32

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(groupId: Int64) {
                query = [:]
                path = [:]

                path["groupId"] = "\(groupId)"
            }
        }

        public let path = "/Fireteam/Clan/{groupId}/ActiveCount/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
