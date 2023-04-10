// This File was auto generated by BungoKitGen
//
// File: GetLinkedProfiles.swift

import Foundation

public extension Requests.Destiny2 {
    /// Returns a summary information about all profiles linked to the requesting membership type/membership ID that have valid Destiny information. The passed-in Membership Type/Membership ID may be a Bungie.Net membership or a Destiny membership. It only returns the minimal amount of data to begin making more substantive requests, but will hopefully serve as a useful alternative to UserServices for people who just care about Destiny data. Note that it will only return linked accounts whose linkages you are allowed to view.
    struct GetLinkedProfilesRequest: BungoRequest {
        public typealias Response = Destiny.Responses.DestinyLinkedProfilesResponse

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(membershipId: Int64, membershipType: BungieMembershipType, getAllMemberships: Bool? = nil) {
                query = [:]
                path = [:]

                if let getAllMemberships {
                    query["getAllMemberships"] = "\(getAllMemberships)"
                }

                path["membershipId"] = "\(membershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Profile/{membershipId}/LinkedProfiles/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
