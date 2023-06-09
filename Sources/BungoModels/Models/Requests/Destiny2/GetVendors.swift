// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetVendors.swift

import Foundation

public extension Requests.Destiny2 {
    /// Get currently available vendors from the list of vendors that can possibly have rotating inventory. Note that this does not include things like preview vendors and vendors-as-kiosks, neither of whom have rotating/dynamic inventories. Use their definitions as-is for those.
    struct GetVendorsRequest: BungoRequest {
        public typealias Response = Destiny.Responses.DestinyVendorsResponse

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(characterId: Int64, destinyMembershipId: Int64, membershipType: BungieMembershipType, components: Destiny.DestinyComponentType..., filter: Destiny.DestinyVendorFilter? = nil) {
                query = [:]
                path = [:]

                query["components"] = "\(components.map { "\($0.rawValue)" }.joined(separator: ","))"
                if let filter {
                    query["filter"] = "\(filter.rawValue)"
                }

                path["characterId"] = "\(characterId)"
                path["destinyMembershipId"] = "\(destinyMembershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
