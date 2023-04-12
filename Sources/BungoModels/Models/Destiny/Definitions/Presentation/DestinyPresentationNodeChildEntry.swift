// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPresentationNodeChildEntry.swift

import Foundation

public extension Destiny.Definitions.Presentation {
    struct DestinyPresentationNodeChildEntry: Codable {
        /// Use this value to sort the presentation node children in ascending order.
        public var nodeDisplayPriority: UInt32?

        public var presentationNodeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case nodeDisplayPriority
            case presentationNodeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            nodeDisplayPriority = try? container.decode(UInt32.self, forKey: CodingKeys.nodeDisplayPriority)
            presentationNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.presentationNodeHash)
        }
    }
}
