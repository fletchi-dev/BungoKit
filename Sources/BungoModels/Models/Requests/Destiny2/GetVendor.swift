// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GetVendor.swift

import Foundation

public extension Requests.Destiny2 {
    /// Get the details of a specific Vendor.
    struct GetVendorRequest: BungoRequest {
        public typealias Response = Destiny.Responses.DestinyVendorResponse

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(characterId: Int64, destinyMembershipId: Int64, membershipType: BungieMembershipType, vendorHash: UInt32, components: Destiny.DestinyComponentType...) {
                query = [:]
                path = [:]

                query["components"] = "\(components.map { "\($0.rawValue)" }.joined(separator: ","))"

                path["characterId"] = "\(characterId)"
                path["destinyMembershipId"] = "\(destinyMembershipId)"
                path["membershipType"] = "\(membershipType.rawValue)"
                path["vendorHash"] = "\(vendorHash)"
            }
        }

        public let path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/{vendorHash}/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
