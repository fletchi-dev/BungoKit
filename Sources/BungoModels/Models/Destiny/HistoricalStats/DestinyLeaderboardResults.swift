// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLeaderboardResults.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyLeaderboardResults: Codable {
        /// Indicate the character ID of the character that is the focal point of the provided leaderboards. May be null, in which case any character from the focus membership can appear in the provided leaderboards.
        public var focusCharacterId: Int64?

        /// Indicate the membership ID of the account that is the focal point of the provided leaderboards.
        public var focusMembershipId: Int64?

        public enum CodingKeys: String, CodingKey {
            case focusCharacterId
            case focusMembershipId
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let focusCharacterId = try? container.decode(String.self, forKey: CodingKeys.focusCharacterId)
            if let focusCharacterId, let focusCharacterIdInt = Int64(focusCharacterId) {
                self.focusCharacterId = focusCharacterIdInt
            } else {
                self.focusCharacterId = nil
            }
            let focusMembershipId = try? container.decode(String.self, forKey: CodingKeys.focusMembershipId)
            if let focusMembershipId, let focusMembershipIdInt = Int64(focusMembershipId) {
                self.focusMembershipId = focusMembershipIdInt
            } else {
                self.focusMembershipId = nil
            }
        }
    }
}
