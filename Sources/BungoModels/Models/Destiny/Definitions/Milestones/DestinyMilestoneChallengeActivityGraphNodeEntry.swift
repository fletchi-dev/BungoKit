// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyMilestoneChallengeActivityGraphNodeEntry.swift

import Foundation

public extension Destiny.Definitions.Milestones {
    struct DestinyMilestoneChallengeActivityGraphNodeEntry: Codable {
        public var activityGraphHash: UInt32?

        public var activityGraphNodeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case activityGraphHash
            case activityGraphNodeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityGraphHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityGraphHash)
            activityGraphNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityGraphNodeHash)
        }
    }
}
