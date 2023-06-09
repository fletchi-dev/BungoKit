// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyArtifactProfileScoped.swift

import Foundation

public extension Destiny.Artifacts {
    /// Represents a Seasonal Artifact and all data related to it for the requested Account.
    /// It can be combined with Character-scoped data for a full picture of what a character has available/has chosen, or just these settings can be used for overview information.
    struct DestinyArtifactProfileScoped: Codable {
        public var artifactHash: UInt32?

        public var pointProgression: Destiny.DestinyProgression?

        public var pointsAcquired: Int32?

        public var powerBonus: Int32?

        public var powerBonusProgression: Destiny.DestinyProgression?

        public enum CodingKeys: String, CodingKey {
            case artifactHash
            case pointProgression
            case pointsAcquired
            case powerBonus
            case powerBonusProgression
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            artifactHash = try? container.decode(UInt32.self, forKey: CodingKeys.artifactHash)
            pointProgression = try? container.decode(Destiny.DestinyProgression.self, forKey: CodingKeys.pointProgression)
            pointsAcquired = try? container.decode(Int32.self, forKey: CodingKeys.pointsAcquired)
            powerBonus = try? container.decode(Int32.self, forKey: CodingKeys.powerBonus)
            powerBonusProgression = try? container.decode(Destiny.DestinyProgression.self, forKey: CodingKeys.powerBonusProgression)
        }
    }
}
