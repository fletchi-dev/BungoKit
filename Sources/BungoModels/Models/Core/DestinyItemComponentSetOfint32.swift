// This File was auto generated by BungoKitGen
//
// File: DestinyItemComponentSetOfint32.swift

import Foundation

public struct DestinyItemComponentSetOfint32: Codable {
    public var instances: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemInstanceComponent>?
    public var objectives: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>?
    public var perks: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>?
    public var plugObjectives: DictionaryComponentResponse<Destiny.Components.Items.DestinyItemPlugObjectivesComponent>?
    public var plugStates: DictionaryComponentResponse<Destiny.Components.Items.DestinyItemPlugComponent>?
    public var renderData: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemRenderComponent>?
    public var reusablePlugs: DictionaryComponentResponse<Destiny.Components.Items.DestinyItemReusablePlugsComponent>?
    public var sockets: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemSocketsComponent>?
    public var stats: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemStatsComponent>?
    public var talentGrids: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemTalentGridComponent>?

    public enum CodingKeys: String, CodingKey {
        case instances
        case objectives
        case perks
        case plugObjectives
        case plugStates
        case renderData
        case reusablePlugs
        case sockets
        case stats
        case talentGrids
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        instances = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemInstanceComponent>.self, forKey: CodingKeys.instances)
        objectives = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>.self, forKey: CodingKeys.objectives)
        perks = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>.self, forKey: CodingKeys.perks)
        plugObjectives = try? container.decode(DictionaryComponentResponse<Destiny.Components.Items.DestinyItemPlugObjectivesComponent>.self, forKey: CodingKeys.plugObjectives)
        plugStates = try? container.decode(DictionaryComponentResponse<Destiny.Components.Items.DestinyItemPlugComponent>.self, forKey: CodingKeys.plugStates)
        renderData = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemRenderComponent>.self, forKey: CodingKeys.renderData)
        reusablePlugs = try? container.decode(DictionaryComponentResponse<Destiny.Components.Items.DestinyItemReusablePlugsComponent>.self, forKey: CodingKeys.reusablePlugs)
        sockets = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemSocketsComponent>.self, forKey: CodingKeys.sockets)
        stats = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemStatsComponent>.self, forKey: CodingKeys.stats)
        talentGrids = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemTalentGridComponent>.self, forKey: CodingKeys.talentGrids)
    }
}
