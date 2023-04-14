// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: PublicDestinyVendorSaleItemSetComponent.swift

import Foundation

public extension Destiny.Responses {
    struct PublicDestinyVendorSaleItemSetComponent: Codable {
        public var saleItems: [Int32: Destiny.Components.Vendors.DestinyPublicVendorSaleItemComponent]?

        public enum CodingKeys: String, CodingKey {
            case saleItems
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let rawsaleItems = try? container.decode([String: Destiny.Components.Vendors.DestinyPublicVendorSaleItemComponent].self, forKey: CodingKeys.saleItems)
            saleItems = rawsaleItems?.compactMapKeys { key, _ -> Int32? in
                Int32(key)
            }
        }
    }
}
