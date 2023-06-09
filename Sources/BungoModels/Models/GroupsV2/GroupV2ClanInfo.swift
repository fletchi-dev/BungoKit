// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GroupV2ClanInfo.swift

import Foundation

public extension GroupsV2 {
    /// This contract contains clan-specific group information. It does not include any investment data.
    struct GroupV2ClanInfo: Codable {
        public var clanBannerData: GroupsV2.ClanBanner?

        public var clanCallsign: String?

        public enum CodingKeys: String, CodingKey {
            case clanBannerData
            case clanCallsign
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            clanBannerData = try? container.decode(GroupsV2.ClanBanner.self, forKey: CodingKeys.clanBannerData)
            clanCallsign = try? container.decode(String.self, forKey: CodingKeys.clanCallsign)
        }
    }
}
