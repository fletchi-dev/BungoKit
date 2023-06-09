// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyActivityGraphConnectionDefinition.swift

import Foundation

public extension Destiny.Definitions.Director {
    /// Nodes on a graph can be visually connected: this appears to be the information about which nodes to link. It appears to lack more detailed information, such as the path for that linking.
    struct DestinyActivityGraphConnectionDefinition: Codable {
        public var destNodeHash: UInt32?

        public var sourceNodeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case destNodeHash
            case sourceNodeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            destNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.destNodeHash)
            sourceNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.sourceNodeHash)
        }
    }
}
