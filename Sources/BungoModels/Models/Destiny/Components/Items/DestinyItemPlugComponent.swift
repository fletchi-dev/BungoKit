// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemPlugComponent.swift

import Foundation

public extension Destiny.Components.Items {
    /// Plugs are non-instanced items that can provide Stat and Perk benefits when socketed into an instanced item. Items have Sockets, and Plugs are inserted into Sockets.
    /// This component finds all items that are considered "Plugs" in your inventory, and return information about the plug aside from any specific Socket into which it could be inserted.
    struct DestinyItemPlugComponent: Codable {
        /// If true, this plug has met all of its insertion requirements. Big if true.
        public var canInsert: Bool?

        /// If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
        /// This list will be empty if the plug is enabled.
        public var enableFailIndexes: [Int32]?

        /// If true, this plug will provide its benefits while inserted.
        public var enabled: Bool?

        /// If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.
        /// This list will be empty if the plug can be inserted.
        public var insertFailIndexes: [Int32]?

        /// The hash identifier of the DestinyInventoryItemDefinition that represents this plug.
        public var plugItemHash: UInt32?

        /// Sometimes, Plugs may have objectives: these are often used for flavor and display purposes, but they can be used for any arbitrary purpose (both fortunately and unfortunately). Recently (with Season 2) they were expanded in use to be used as the "gating" for whether the plug can be inserted at all. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data.
        public var plugObjectives: [Destiny.Quests.DestinyObjectiveProgress]?

        public enum CodingKeys: String, CodingKey {
            case canInsert
            case enableFailIndexes
            case enabled
            case insertFailIndexes
            case plugItemHash
            case plugObjectives
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            canInsert = try? container.decode(Bool.self, forKey: CodingKeys.canInsert)
            enableFailIndexes = try? container.decode([Int32].self, forKey: CodingKeys.enableFailIndexes)
            enabled = try? container.decode(Bool.self, forKey: CodingKeys.enabled)
            insertFailIndexes = try? container.decode([Int32].self, forKey: CodingKeys.insertFailIndexes)
            plugItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.plugItemHash)
            plugObjectives = try? container.decode([Destiny.Quests.DestinyObjectiveProgress].self, forKey: CodingKeys.plugObjectives)
        }
    }
}
