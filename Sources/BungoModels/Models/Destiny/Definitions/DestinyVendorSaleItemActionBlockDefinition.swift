// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorSaleItemActionBlockDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Not terribly useful, some basic cooldown interaction info.
    struct DestinyVendorSaleItemActionBlockDefinition: Codable {
        public var executeSeconds: Float?

        public var isPositive: Bool?

        public enum CodingKeys: String, CodingKey {
            case executeSeconds
            case isPositive
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            executeSeconds = try? container.decode(Float.self, forKey: CodingKeys.executeSeconds)
            isPositive = try? container.decode(Bool.self, forKey: CodingKeys.isPositive)
        }
    }
}
