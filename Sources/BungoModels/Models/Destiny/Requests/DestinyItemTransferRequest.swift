// This File was auto generated by BungoKitGen
//
// File: DestinyItemTransferRequest.swift

import Foundation

public extension Destiny.Requests {
    struct DestinyItemTransferRequest: Codable {
        public var characterId: Int64?
        /// The instance ID of the item for this action request.
        public var itemId: Int64?
        public var itemReferenceHash: UInt32?
        public var membershipType: BungieMembershipType?
        public var stackSize: Int32?
        public var transferToVault: Bool?

        public enum CodingKeys: String, CodingKey {
            case characterId
            case itemId
            case itemReferenceHash
            case membershipType
            case stackSize
            case transferToVault
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let characterId = try? container.decode(String.self, forKey: CodingKeys.characterId)
            if let characterId, let characterIdInt = Int64(characterId) {
                self.characterId = characterIdInt
            } else {
                self.characterId = nil
            }
            let itemId = try? container.decode(String.self, forKey: CodingKeys.itemId)
            if let itemId, let itemIdInt = Int64(itemId) {
                self.itemId = itemIdInt
            } else {
                self.itemId = nil
            }
            itemReferenceHash = try? container.decode(UInt32.self, forKey: CodingKeys.itemReferenceHash)
            membershipType = try? container.decode(BungieMembershipType.self, forKey: CodingKeys.membershipType)
            stackSize = try? container.decode(Int32.self, forKey: CodingKeys.stackSize)
            transferToVault = try? container.decode(Bool.self, forKey: CodingKeys.transferToVault)
        }
    }
}
