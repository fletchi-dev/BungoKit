// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemMetricBlockDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// The metrics available for display and selection on an item.
    struct DestinyItemMetricBlockDefinition: Codable {
        /// Hash identifiers for any DestinyPresentationNodeDefinition entry that can be used to list available metrics. Any metric listed directly below these nodes, or in any of these nodes' children will be made available for selection.
        public var availableMetricCategoryNodeHashes: [UInt32]?

        public enum CodingKeys: String, CodingKey {
            case availableMetricCategoryNodeHashes
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            availableMetricCategoryNodeHashes = try? container.decode([UInt32].self, forKey: CodingKeys.availableMetricCategoryNodeHashes)
        }
    }
}
