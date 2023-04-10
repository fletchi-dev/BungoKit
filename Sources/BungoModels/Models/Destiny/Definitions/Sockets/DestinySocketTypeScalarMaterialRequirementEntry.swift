// This File was auto generated by BungoKitGen
//
// File: DestinySocketTypeScalarMaterialRequirementEntry.swift

import Foundation

public extension Destiny.Definitions.Sockets {
    struct DestinySocketTypeScalarMaterialRequirementEntry: Codable {
        public var currencyItemHash: UInt32?
        public var scalarValue: Int32?

        public enum CodingKeys: String, CodingKey {
            case currencyItemHash
            case scalarValue
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            currencyItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.currencyItemHash)
            scalarValue = try? container.decode(Int32.self, forKey: CodingKeys.scalarValue)
        }
    }
}
