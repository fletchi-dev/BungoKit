// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPublicMilestoneChallenge.swift

import Foundation

public extension Destiny.Milestones {
    /// A Milestone can have many Challenges. Challenges are just extra Objectives that provide a fun way to mix-up play and provide extra rewards.
    struct DestinyPublicMilestoneChallenge: Codable {
        /// IF the Objective is related to a specific Activity, this will be that activity's hash. Use it to look up the DestinyActivityDefinition for additional data to show.
        public var activityHash: UInt32?

        /// The objective for the Challenge, which should have human-readable data about what needs to be done to accomplish the objective. Use this hash to look up the DestinyObjectiveDefinition.
        public var objectiveHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case objectiveHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            objectiveHash = try? container.decode(UInt32.self, forKey: CodingKeys.objectiveHash)
        }
    }
}
