// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyEnergyCapacityEntry.swift

import Foundation

public extension Destiny.Definitions.Items {
    /// Items can have Energy Capacity, and plugs can provide that capacity such as on a piece of Armor in Armor 2.0. This is how much "Energy" can be spent on activating plugs for this item.
    struct DestinyEnergyCapacityEntry: Codable {
        /// How much energy capacity this plug provides.
        public var capacityValue: Int32?

        /// The Energy Type for this energy capacity, in enum form for easy use.
        public var energyType: Destiny.DestinyEnergyType?

        /// Energy provided by a plug is always of a specific type - this is the hash identifier for the energy type for which it provides Capacity.
        public var energyTypeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case capacityValue
            case energyType
            case energyTypeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            capacityValue = try? container.decode(Int32.self, forKey: CodingKeys.capacityValue)
            energyType = try? container.decode(Destiny.DestinyEnergyType.self, forKey: CodingKeys.energyType)
            energyTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.energyTypeHash)
        }
    }
}
