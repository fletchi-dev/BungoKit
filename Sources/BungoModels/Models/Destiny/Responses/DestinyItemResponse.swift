// This File was auto generated by BungoKitGen
//
// File: DestinyItemResponse.swift

import Foundation

public extension Destiny.Responses {
    /// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition.
    struct DestinyItemResponse: Codable {
        /// If the item is on a character, this will return the ID of the character that is holding the item.
        public var characterId: Int64?
        /// Basic instance data for the item.
        /// COMPONENT TYPE: ItemInstances
        public var instance: SingleComponentResponse<Destiny.Entities.Items.DestinyItemInstanceComponent>?
        /// Common data for the item relevant to its non-instanced properties.
        /// COMPONENT TYPE: ItemCommonData
        public var item: SingleComponentResponse<Destiny.Entities.Items.DestinyItemComponent>?
        /// Information specifically about the item's objectives.
        /// COMPONENT TYPE: ItemObjectives
        public var objectives: SingleComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>?
        /// Information specifically about the perks currently active on the item.
        /// COMPONENT TYPE: ItemPerks
        public var perks: SingleComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>?
        /// Information about objectives on Plugs for a given item. See the component's documentation for more info.
        /// COMPONENT TYPE: ItemPlugObjectives
        public var plugObjectives: SingleComponentResponse<Destiny.Components.Items.DestinyItemPlugObjectivesComponent>?
        /// Information about how to render the item in 3D.
        /// COMPONENT TYPE: ItemRenderData
        public var renderData: SingleComponentResponse<Destiny.Entities.Items.DestinyItemRenderComponent>?
        /// Information about the Reusable Plugs for sockets on an item. These are plugs that you can insert into the given socket regardless of if you actually own an instance of that plug: they are logic-driven plugs rather than inventory-driven.
        ///  These may need to be combined with Plug Set component data to get a full picture of available plugs on a given socket.
        ///  COMPONENT TYPE: ItemReusablePlugs
        public var reusablePlugs: SingleComponentResponse<Destiny.Components.Items.DestinyItemReusablePlugsComponent>?
        /// Information about the sockets of the item: which are currently active, what potential sockets you could have and the stats/abilities/perks you can gain from them.
        /// COMPONENT TYPE: ItemSockets
        public var sockets: SingleComponentResponse<Destiny.Entities.Items.DestinyItemSocketsComponent>?
        /// Information about the computed stats of the item: power, defense, etc...
        /// COMPONENT TYPE: ItemStats
        public var stats: SingleComponentResponse<Destiny.Entities.Items.DestinyItemStatsComponent>?
        /// Information about the talent grid attached to the item. Talent nodes can provide a variety of benefits and abilities, and in Destiny 2 are used almost exclusively for the character's "Builds".
        /// COMPONENT TYPE: ItemTalentGrids
        public var talentGrid: SingleComponentResponse<Destiny.Entities.Items.DestinyItemTalentGridComponent>?

        public enum CodingKeys: String, CodingKey {
            case characterId
            case instance
            case item
            case objectives
            case perks
            case plugObjectives
            case renderData
            case reusablePlugs
            case sockets
            case stats
            case talentGrid
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let characterId = try? container.decode(String.self, forKey: CodingKeys.characterId)
            if let characterId, let characterIdInt = Int64(characterId) {
                self.characterId = characterIdInt
            } else {
                self.characterId = nil
            }
            instance = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemInstanceComponent>.self, forKey: CodingKeys.instance)
            item = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemComponent>.self, forKey: CodingKeys.item)
            objectives = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>.self, forKey: CodingKeys.objectives)
            perks = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>.self, forKey: CodingKeys.perks)
            plugObjectives = try? container.decode(SingleComponentResponse<Destiny.Components.Items.DestinyItemPlugObjectivesComponent>.self, forKey: CodingKeys.plugObjectives)
            renderData = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemRenderComponent>.self, forKey: CodingKeys.renderData)
            reusablePlugs = try? container.decode(SingleComponentResponse<Destiny.Components.Items.DestinyItemReusablePlugsComponent>.self, forKey: CodingKeys.reusablePlugs)
            sockets = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemSocketsComponent>.self, forKey: CodingKeys.sockets)
            stats = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemStatsComponent>.self, forKey: CodingKeys.stats)
            talentGrid = try? container.decode(SingleComponentResponse<Destiny.Entities.Items.DestinyItemTalentGridComponent>.self, forKey: CodingKeys.talentGrid)
        }
    }
}
