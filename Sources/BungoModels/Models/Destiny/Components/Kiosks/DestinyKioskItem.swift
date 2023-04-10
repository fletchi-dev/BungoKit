// This File was auto generated by BungoKitGen
//
// File: DestinyKioskItem.swift

import Foundation

public extension Destiny.Components.Kiosks {
    struct DestinyKioskItem: Codable {
        /// If true, the user can not only see the item, but they can acquire it. It is possible that a user can see a kiosk item and not be able to acquire it.
        public var canAcquire: Bool?
        /// Indexes into failureStrings for the Vendor, indicating the reasons why it failed if any.
        public var failureIndexes: [Int32]?
        /// I may regret naming it this way - but this represents when an item has an objective that doesn't serve a beneficial purpose, but rather is used for "flavor" or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item.
        public var flavorObjective: Destiny.Quests.DestinyObjectiveProgress?
        /// The index of the item in the related DestinyVendorDefintion's itemList property, representing the sale.
        public var index: Int32?

        public enum CodingKeys: String, CodingKey {
            case canAcquire
            case failureIndexes
            case flavorObjective
            case index
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            canAcquire = try? container.decode(Bool.self, forKey: CodingKeys.canAcquire)
            failureIndexes = try? container.decode([Int32].self, forKey: CodingKeys.failureIndexes)
            flavorObjective = try? container.decode(Destiny.Quests.DestinyObjectiveProgress.self, forKey: CodingKeys.flavorObjective)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
        }
    }
}
