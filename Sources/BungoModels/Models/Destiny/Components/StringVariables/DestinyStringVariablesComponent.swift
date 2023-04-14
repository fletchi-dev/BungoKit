// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyStringVariablesComponent.swift

import Foundation

public extension Destiny.Components.StringVariables {
    struct DestinyStringVariablesComponent: Codable {
        public var integerValuesByHash: [UInt32: Int32]?

        public enum CodingKeys: String, CodingKey {
            case integerValuesByHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let rawintegerValuesByHash = try? container.decode([String: Int32].self, forKey: CodingKeys.integerValuesByHash)
            integerValuesByHash = rawintegerValuesByHash?.compactMapKeys { key, _ -> UInt32? in
                UInt32(key)
            }
        }
    }
}
