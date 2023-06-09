// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPlatformSilverComponent.swift

import Foundation

public extension Destiny.Components.Inventory {
    struct DestinyPlatformSilverComponent: Codable {
        /// If a Profile is played on multiple platforms, this is the silver they have for each platform, keyed by Membership Type.
        public var platformSilver: [Int32: Destiny.Entities.Items.DestinyItemComponent]?

        public enum CodingKeys: String, CodingKey {
            case platformSilver
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let rawplatformSilver = try? container.decode([String: Destiny.Entities.Items.DestinyItemComponent].self, forKey: CodingKeys.platformSilver)
            platformSilver = rawplatformSilver?.compactMapKeys { key, _ -> Int32? in
                Int32(key)
            }
        }
    }
}
