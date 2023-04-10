// This File was auto generated by BungoKitGen
//
// File: RewardAvailabilityModel.swift

import Foundation

public extension Tokens {
    struct RewardAvailabilityModel: Codable {
        public var collectibleDefinitions: [Tokens.CollectibleDefinitions]?
        public var decryptedToken: String?
        public var gameEarnByDate: Date?
        public var hasExistingCode: Bool?
        public var hasOffer: Bool?
        public var isLoyaltyReward: Bool?
        public var isOffer: Bool?
        public var offerApplied: Bool?
        public var recordDefinitions: [Destiny.Definitions.Records.DestinyRecordDefinition]?
        public var redemptionEndDate: Date?
        public var shopifyEndDate: Date?

        public enum CodingKeys: String, CodingKey {
            case collectibleDefinitions = "CollectibleDefinitions"
            case decryptedToken = "DecryptedToken"
            case gameEarnByDate = "GameEarnByDate"
            case hasExistingCode = "HasExistingCode"
            case hasOffer = "HasOffer"
            case isLoyaltyReward = "IsLoyaltyReward"
            case isOffer = "IsOffer"
            case offerApplied = "OfferApplied"
            case recordDefinitions = "RecordDefinitions"
            case redemptionEndDate = "RedemptionEndDate"
            case shopifyEndDate = "ShopifyEndDate"
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            collectibleDefinitions = try? container.decode([Tokens.CollectibleDefinitions].self, forKey: CodingKeys.collectibleDefinitions)
            decryptedToken = try? container.decode(String.self, forKey: CodingKeys.decryptedToken)
            gameEarnByDate = try? container.decode(Date.self, forKey: CodingKeys.gameEarnByDate)
            hasExistingCode = try? container.decode(Bool.self, forKey: CodingKeys.hasExistingCode)
            hasOffer = try? container.decode(Bool.self, forKey: CodingKeys.hasOffer)
            isLoyaltyReward = try? container.decode(Bool.self, forKey: CodingKeys.isLoyaltyReward)
            isOffer = try? container.decode(Bool.self, forKey: CodingKeys.isOffer)
            offerApplied = try? container.decode(Bool.self, forKey: CodingKeys.offerApplied)
            recordDefinitions = try? container.decode([Destiny.Definitions.Records.DestinyRecordDefinition].self, forKey: CodingKeys.recordDefinitions)
            redemptionEndDate = try? container.decode(Date.self, forKey: CodingKeys.redemptionEndDate)
            shopifyEndDate = try? container.decode(Date.self, forKey: CodingKeys.shopifyEndDate)
        }
    }
}
