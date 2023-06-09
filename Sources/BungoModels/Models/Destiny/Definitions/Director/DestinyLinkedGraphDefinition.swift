// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLinkedGraphDefinition.swift

import Foundation

public extension Destiny.Definitions.Director {
    /// This describes links between the current graph and others, as well as when that link is relevant.
    struct DestinyLinkedGraphDefinition: Codable {
        public var description: String?

        public var linkedGraphId: UInt32?

        public var linkedGraphs: [Destiny.Definitions.Director.DestinyLinkedGraphEntryDefinition]?

        public var name: String?

        public var overview: String?

        public var unlockExpression: Destiny.Definitions.DestinyUnlockExpressionDefinition?

        public enum CodingKeys: String, CodingKey {
            case description
            case linkedGraphId
            case linkedGraphs
            case name
            case overview
            case unlockExpression
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            description = try? container.decode(String.self, forKey: CodingKeys.description)
            linkedGraphId = try? container.decode(UInt32.self, forKey: CodingKeys.linkedGraphId)
            linkedGraphs = try? container.decode([Destiny.Definitions.Director.DestinyLinkedGraphEntryDefinition].self, forKey: CodingKeys.linkedGraphs)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            overview = try? container.decode(String.self, forKey: CodingKeys.overview)
            unlockExpression = try? container.decode(Destiny.Definitions.DestinyUnlockExpressionDefinition.self, forKey: CodingKeys.unlockExpression)
        }
    }
}
