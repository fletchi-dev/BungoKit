// This File was auto generated by BungoKitGen
//
// File: DestinyMilestoneValueDefinition.swift

import Foundation

public extension Destiny.Definitions.Milestones {
    /// The definition for information related to a key/value pair that is relevant for a particular Milestone or component within the Milestone.
    /// This lets us more flexibly pass up information that's useful to someone, even if it's not necessarily us.
    struct DestinyMilestoneValueDefinition: Codable {
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case displayProperties
            case key
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            key = try? container.decode(String.self, forKey: CodingKeys.key)
        }
    }
}
