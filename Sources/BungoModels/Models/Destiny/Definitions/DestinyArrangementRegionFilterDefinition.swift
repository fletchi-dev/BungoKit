// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyArrangementRegionFilterDefinition.swift

import Foundation

public extension Destiny.Definitions {
    struct DestinyArrangementRegionFilterDefinition: Codable {
        public var arrangementIndexByStatValue: [Int32: Int32]?

        public var artArrangementRegionHash: UInt32?

        public var artArrangementRegionIndex: Int32?

        public var statHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case arrangementIndexByStatValue
            case artArrangementRegionHash
            case artArrangementRegionIndex
            case statHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let rawarrangementIndexByStatValue = try? container.decode([String: Int32].self, forKey: CodingKeys.arrangementIndexByStatValue)
            arrangementIndexByStatValue = rawarrangementIndexByStatValue?.compactMapKeys { key, _ -> Int32? in
                Int32(key)
            }
            artArrangementRegionHash = try? container.decode(UInt32.self, forKey: CodingKeys.artArrangementRegionHash)
            artArrangementRegionIndex = try? container.decode(Int32.self, forKey: CodingKeys.artArrangementRegionIndex)
            statHash = try? container.decode(UInt32.self, forKey: CodingKeys.statHash)
        }
    }
}
