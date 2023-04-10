// This File was auto generated by BungoKitGen
//
// File: DestinyLinkedGraphEntryDefinition.swift

import Foundation

public extension Destiny.Definitions.Director {
    struct DestinyLinkedGraphEntryDefinition: Codable {
        public var activityGraphHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case activityGraphHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityGraphHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityGraphHash)
        }
    }
}
