// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyChecklistEntryDefinition.swift

import Foundation

public extension Destiny.Definitions.Checklists {
    /// The properties of an individual checklist item. Note that almost everything is optional: it is *highly* variable what kind of data we'll actually be able to return: at times we may have no other relationships to entities at all.
    /// Whatever UI you build, do it with the knowledge that any given entry might not actually be able to be associated with some other Destiny entity.
    struct DestinyChecklistEntryDefinition: Codable {
        public var activityHash: UInt32?

        /// Note that a Bubble's hash doesn't uniquely identify a "top level" entity in Destiny. Only the combination of location and bubble can uniquely identify a place in the world of Destiny: so if bubbleHash is populated, locationHash must too be populated for it to have any meaning.
        /// You can use this property if it is populated to look up the DestinyLocationDefinition's associated .locationReleases[].activityBubbleName property.
        public var bubbleHash: UInt32?

        public var destinationHash: UInt32?

        /// Even if no other associations exist, we will give you *something* for display properties. In cases where we have no associated entities, it may be as simple as a numerical identifier.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The identifier for this Checklist entry. Guaranteed unique only within this Checklist Definition, and not globally/for all checklists.
        public var hash: UInt32?

        public var itemHash: UInt32?

        public var locationHash: UInt32?

        /// The scope at which this specific entry can be computed.
        public var scope: Destiny.DestinyScope?

        public var vendorHash: UInt32?

        public var vendorInteractionIndex: Int32?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case bubbleHash
            case destinationHash
            case displayProperties
            case hash
            case itemHash
            case locationHash
            case scope
            case vendorHash
            case vendorInteractionIndex
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            bubbleHash = try? container.decode(UInt32.self, forKey: CodingKeys.bubbleHash)
            destinationHash = try? container.decode(UInt32.self, forKey: CodingKeys.destinationHash)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            itemHash = try? container.decode(UInt32.self, forKey: CodingKeys.itemHash)
            locationHash = try? container.decode(UInt32.self, forKey: CodingKeys.locationHash)
            scope = try? container.decode(Destiny.DestinyScope.self, forKey: CodingKeys.scope)
            vendorHash = try? container.decode(UInt32.self, forKey: CodingKeys.vendorHash)
            vendorInteractionIndex = try? container.decode(Int32.self, forKey: CodingKeys.vendorInteractionIndex)
        }
    }
}
