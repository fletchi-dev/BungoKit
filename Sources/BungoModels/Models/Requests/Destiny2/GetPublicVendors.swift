// This File was auto generated by BungoKitGen
//
// File: GetPublicVendors.swift

import Foundation

public extension Requests.Destiny2 {
    /// Get items available from vendors where the vendors have items for sale that are common for everyone. If any portion of the Vendor's available inventory is character or account specific, we will be unable to return their data from this endpoint due to the way that available inventory is computed. As I am often guilty of saying: 'It's a long story...'
    struct GetPublicVendorsRequest: BungoRequest {
        public typealias Response = Destiny.Responses.DestinyPublicVendorsResponse

        public struct Parameters: BungoRequestParameters {
            public var query: [String: String]
            public var path: [String: String]

            public init(components: Destiny.DestinyComponentType...) {
                query = [:]
                path = [:]

                query["components"] = "\(components.map { "\($0.rawValue)" }.joined(separator: ","))"
            }
        }

        public let path = "/Destiny2/Vendors/"
        public let parameters: Parameters
        public let method: HTTPMethod = .get
        public let successStatus: Int = 200

        public init(parameters: Parameters) {
            self.parameters = parameters
        }
    }
}
