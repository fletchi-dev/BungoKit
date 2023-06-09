// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyLoadoutActionRequest.swift

import Foundation

public extension Destiny.Requests.Actions {
    struct DestinyLoadoutActionRequest: Codable {
        public var characterId: Int64?

        /// The index of the loadout for this action request.
        public var loadoutIndex: Int32?

        public var membershipType: BungieMembershipType?

        public enum CodingKeys: String, CodingKey {
            case characterId
            case loadoutIndex
            case membershipType
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let characterId = try? container.decode(String.self, forKey: CodingKeys.characterId)
            if let characterId, let characterIdInt = Int64(characterId) {
                self.characterId = characterIdInt
            } else {
                self.characterId = nil
            }
            loadoutIndex = try? container.decode(Int32.self, forKey: CodingKeys.loadoutIndex)
            membershipType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.membershipType)
        }
    }
}
