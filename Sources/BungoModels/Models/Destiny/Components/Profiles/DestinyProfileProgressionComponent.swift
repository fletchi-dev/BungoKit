// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyProfileProgressionComponent.swift

import Foundation

public extension Destiny.Components.Profiles {
    /// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there's less guitars on fire. Yet. #spoileralert?
    /// This will include information such as Checklist info.
    struct DestinyProfileProgressionComponent: Codable {
        /// The set of checklists that can be examined on a profile-wide basis, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
        /// For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet.
        public var checklists: [UInt32: [UInt32: Bool]]?

        /// Data related to your progress on the current season's artifact that is the same across characters.
        public var seasonalArtifact: Destiny.Artifacts.DestinyArtifactProfileScoped?

        public enum CodingKeys: String, CodingKey {
            case checklists
            case seasonalArtifact
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            checklists = try? container.decode([UInt32: [UInt32: Bool]].self, forKey: CodingKeys.checklists)
            seasonalArtifact = try? container.decode(Destiny.Artifacts.DestinyArtifactProfileScoped.self, forKey: CodingKeys.seasonalArtifact)
        }
    }
}
