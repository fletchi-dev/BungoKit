// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLeaderboardEntry.swift

import Foundation

public extension Destiny.HistoricalStats {
    struct DestinyLeaderboardEntry: Codable {
        /// ID of the player's best character for the reported stat.
        public var characterId: Int64?

        /// Identity details of the player
        public var player: Destiny.HistoricalStats.DestinyPlayer?

        /// Where this player ranks on the leaderboard. A value of 1 is the top rank.
        public var rank: Int32?

        /// Value of the stat for this player
        public var value: Destiny.HistoricalStats.DestinyHistoricalStatsValue?

        public enum CodingKeys: String, CodingKey {
            case characterId
            case player
            case rank
            case value
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let characterId = try? container.decode(String.self, forKey: CodingKeys.characterId)
            if let characterId, let characterIdInt = Int64(characterId) {
                self.characterId = characterIdInt
            } else {
                self.characterId = nil
            }
            player = try? container.decode(Destiny.HistoricalStats.DestinyPlayer.self, forKey: CodingKeys.player)
            rank = try? container.decode(Int32.self, forKey: CodingKeys.rank)
            value = try? container.decode(Destiny.HistoricalStats.DestinyHistoricalStatsValue.self, forKey: CodingKeys.value)
        }
    }
}
