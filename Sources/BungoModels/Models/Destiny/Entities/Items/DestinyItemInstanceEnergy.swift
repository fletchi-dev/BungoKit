// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemInstanceEnergy.swift

import Foundation

public extension Destiny.Entities.Items {
    struct DestinyItemInstanceEnergy: Codable {
        /// The total capacity of Energy that the item currently has, regardless of if it is currently being used.
        public var energyCapacity: Int32?

        /// This is the enum version of the Energy Type value, for convenience.
        public var energyType: Destiny.DestinyEnergyType?

        /// The type of energy for this item. Plugs that require Energy can only be inserted if they have the "Any" Energy Type or the matching energy type of this item. This is a reference to the DestinyEnergyTypeDefinition for the energy type, where you can find extended info about it.
        public var energyTypeHash: UInt32?

        /// The amount of energy still available for inserting new plugs.
        public var energyUnused: Int32?

        /// The amount of Energy currently in use by inserted plugs.
        public var energyUsed: Int32?

        public enum CodingKeys: String, CodingKey {
            case energyCapacity
            case energyType
            case energyTypeHash
            case energyUnused
            case energyUsed
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            energyCapacity = try? container.decode(Int32.self, forKey: CodingKeys.energyCapacity)
            energyType = try? container.decode(Destiny.DestinyEnergyType.self, forKey: CodingKeys.energyType)
            energyTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.energyTypeHash)
            energyUnused = try? container.decode(Int32.self, forKey: CodingKeys.energyUnused)
            energyUsed = try? container.decode(Int32.self, forKey: CodingKeys.energyUsed)
        }
    }
}
