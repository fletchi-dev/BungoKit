// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLoadoutUpdateActionRequest.swift

import Foundation

public extension Destiny.Requests.Actions {
    struct DestinyLoadoutUpdateActionRequest: Codable {
        public var characterId: Int64?

        public var colorHash: UInt32?

        public var iconHash: UInt32?

        /// The index of the loadout for this action request.
        public var loadoutIndex: Int32?

        public var membershipType: BungieMembershipType?

        public var nameHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case characterId
            case colorHash
            case iconHash
            case loadoutIndex
            case membershipType
            case nameHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let characterId = try? container.decode(String.self, forKey: CodingKeys.characterId)
            if let characterId, let characterIdInt = Int64(characterId) {
                self.characterId = characterIdInt
            } else {
                self.characterId = nil
            }
            colorHash = try? container.decode(UInt32.self, forKey: CodingKeys.colorHash)
            iconHash = try? container.decode(UInt32.self, forKey: CodingKeys.iconHash)
            loadoutIndex = try? container.decode(Int32.self, forKey: CodingKeys.loadoutIndex)
            membershipType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.membershipType)
            nameHash = try? container.decode(UInt32.self, forKey: CodingKeys.nameHash)
        }
    }
}
