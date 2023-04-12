// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorReceipt.swift

import Foundation

public extension Destiny.Vendors {
    /// If a character purchased an item that is refundable, a Vendor Receipt will be created on the user's Destiny Profile. These expire after a configurable period of time, but until then can be used to get refunds on items. BNet does not provide the ability to refund a purchase *yet*, but you know.
    struct DestinyVendorReceipt: Codable {
        /// The amount paid for the item, in terms of items that were consumed in the purchase and their quantity.
        public var currencyPaid: [Destiny.DestinyItemQuantity]?

        /// The date at which this receipt is rendered invalid.
        public var expiresOn: Date?

        /// The item that was received, and its quantity.
        public var itemReceived: Destiny.DestinyItemQuantity?

        /// The unlock flag used to determine whether you still have the purchased item.
        public var licenseUnlockHash: UInt32?

        /// The ID of the character who made the purchase.
        public var purchasedByCharacterId: Int64?

        /// Whether you can get a refund, and what happens in order for the refund to be received. See the DestinyVendorItemRefundPolicy enum for details.
        public var refundPolicy: Destiny.DestinyVendorItemRefundPolicy?

        /// The identifier of this receipt.
        public var sequenceNumber: Int32?

        /// The seconds since epoch at which this receipt is rendered invalid.
        public var timeToExpiration: Int64?

        public enum CodingKeys: String, CodingKey {
            case currencyPaid
            case expiresOn
            case itemReceived
            case licenseUnlockHash
            case purchasedByCharacterId
            case refundPolicy
            case sequenceNumber
            case timeToExpiration
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            currencyPaid = try? container.decode([Destiny.DestinyItemQuantity].self, forKey: CodingKeys.currencyPaid)
            expiresOn = try? container.decode(Date.self, forKey: CodingKeys.expiresOn)
            itemReceived = try? container.decode(Destiny.DestinyItemQuantity.self, forKey: CodingKeys.itemReceived)
            licenseUnlockHash = try? container.decode(UInt32.self, forKey: CodingKeys.licenseUnlockHash)
            let purchasedByCharacterId = try? container.decode(String.self, forKey: CodingKeys.purchasedByCharacterId)
            if let purchasedByCharacterId, let purchasedByCharacterIdInt = Int64(purchasedByCharacterId) {
                self.purchasedByCharacterId = purchasedByCharacterIdInt
            } else {
                self.purchasedByCharacterId = nil
            }
            refundPolicy = try? container.decode(Destiny.DestinyVendorItemRefundPolicy.self, forKey: CodingKeys.refundPolicy)
            sequenceNumber = try? container.decode(Int32.self, forKey: CodingKeys.sequenceNumber)
            let timeToExpiration = try? container.decode(String.self, forKey: CodingKeys.timeToExpiration)
            if let timeToExpiration, let timeToExpirationInt = Int64(timeToExpiration) {
                self.timeToExpiration = timeToExpirationInt
            } else {
                self.timeToExpiration = nil
            }
        }
    }
}
