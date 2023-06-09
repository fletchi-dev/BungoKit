// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemVersionDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// The version definition currently just holds a reference to the power cap.
    struct DestinyItemVersionDefinition: Codable {
        /// A reference to the power cap for this item version.
        public var powerCapHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case powerCapHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            powerCapHash = try? container.decode(UInt32.self, forKey: CodingKeys.powerCapHash)
        }
    }
}
