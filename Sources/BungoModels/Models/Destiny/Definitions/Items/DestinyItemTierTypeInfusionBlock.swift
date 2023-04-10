// This File was auto generated by BungoKitGen
//
// File: DestinyItemTierTypeInfusionBlock.swift

import Foundation

public extension Destiny.Definitions.Items {
    struct DestinyItemTierTypeInfusionBlock: Codable {
        /// The default portion of quality that will transfer from the infuser to the infusee item. (InfuserQuality - InfuseeQuality) * baseQualityTransferRatio = base quality transferred.
        public var baseQualityTransferRatio: Float?
        /// As long as InfuserQuality > InfuseeQuality, the amount of quality bestowed is guaranteed to be at least this value, even if the transferRatio would dictate that it should be less. The total amount of quality that ends up in the Infusee cannot exceed the Infuser's quality however (for instance, if you infuse a 300 item with a 301 item and the minimum quality increment is 10, the infused item will not end up with 310 quality)
        public var minimumQualityIncrement: Int32?

        public enum CodingKeys: String, CodingKey {
            case baseQualityTransferRatio
            case minimumQualityIncrement
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            baseQualityTransferRatio = try? container.decode(Float.self, forKey: CodingKeys.baseQualityTransferRatio)
            minimumQualityIncrement = try? container.decode(Int32.self, forKey: CodingKeys.minimumQualityIncrement)
        }
    }
}
