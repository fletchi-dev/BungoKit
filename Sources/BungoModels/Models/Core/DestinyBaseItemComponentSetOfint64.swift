// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyBaseItemComponentSetOfint64.swift

import Foundation

public struct DestinyBaseItemComponentSetOfint64: Codable {
    public var objectives: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>?

    public var perks: DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>?

    public enum CodingKeys: String, CodingKey {
        case objectives
        case perks
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        objectives = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemObjectivesComponent>.self, forKey: CodingKeys.objectives)
        perks = try? container.decode(DictionaryComponentResponse<Destiny.Entities.Items.DestinyItemPerksComponent>.self, forKey: CodingKeys.perks)
    }
}
