// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.swift

import Foundation

public struct DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent: Codable {
    public var saleItems: [Int32: Destiny.Entities.Vendors.DestinyVendorSaleItemComponent]?

    public enum CodingKeys: String, CodingKey {
        case saleItems
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        saleItems = try? container.decode([Int32: Destiny.Entities.Vendors.DestinyVendorSaleItemComponent].self, forKey: CodingKeys.saleItems)
    }
}
