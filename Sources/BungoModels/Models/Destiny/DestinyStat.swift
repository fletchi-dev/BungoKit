// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyStat.swift

import Foundation

public extension Destiny {
    /// Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...)
    struct DestinyStat: Codable {
        /// The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat.
        public var statHash: UInt32?

        /// The current value of the Stat.
        public var value: Int32?

        public enum CodingKeys: String, CodingKey {
            case statHash
            case value
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            statHash = try? container.decode(UInt32.self, forKey: CodingKeys.statHash)
            value = try? container.decode(Int32.self, forKey: CodingKeys.value)
        }
    }
}
