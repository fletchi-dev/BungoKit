// This File was auto generated by BungoKitGen
//
// File: DestinyPlatformSilverComponent.swift

import Foundation

public extension Destiny.Components.Inventory {
    struct DestinyPlatformSilverComponent: Codable {
        /// If a Profile is played on multiple platforms, this is the silver they have for each platform, keyed by Membership Type.
        public var platformSilver: [Int: Destiny.Entities.Items.DestinyItemComponent]?

        public enum CodingKeys: String, CodingKey {
            case platformSilver
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            platformSilver = try? container.decode([Int: Destiny.Entities.Items.DestinyItemComponent].self, forKey: CodingKeys.platformSilver)
        }
    }
}
