// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyActivityGraphNodeFeaturingStateDefinition.swift

import Foundation

public extension Destiny.Definitions.Director {
    /// Nodes can have different visual states. This object represents a single visual state ("highlight type") that a node can be in, and the unlock expression condition to determine whether it should be set.
    struct DestinyActivityGraphNodeFeaturingStateDefinition: Codable {
        /// The node can be highlighted in a variety of ways - the game iterates through these and finds the first FeaturingState that is valid at the present moment given the Game, Account, and Character state, and renders the node in that state. See the ActivityGraphNodeHighlightType enum for possible values.
        public var highlightType: Destiny.ActivityGraphNodeHighlightType?

        public enum CodingKeys: String, CodingKey {
            case highlightType
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            highlightType = try? container.decode(Destiny.ActivityGraphNodeHighlightType.self, forKey: CodingKeys.highlightType)
        }
    }
}
