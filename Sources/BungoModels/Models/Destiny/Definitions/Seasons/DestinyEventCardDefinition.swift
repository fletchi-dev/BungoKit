// This File was auto generated by BungoKitGen
//
// File: DestinyEventCardDefinition.swift

import Foundation

public extension Destiny.Definitions.Seasons {
    /// Defines the properties of an 'Event Card' in Destiny 2, to coincide with a seasonal event for additional challenges, premium rewards, a new seal, and a special title. For example: Solstice of Heroes 2022.
    struct DestinyEventCardDefinition: Codable {
        public var color: Destiny.Misc.DestinyColor?
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        public var endTime: Int64?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        public var images: Destiny.Definitions.Seasons.DestinyEventCardImages?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        public var linkRedirectPath: String?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        public var sealPresentationNodeHash: UInt32?
        public var ticketCurrencyItemHash: UInt32?
        public var ticketVendorCategoryHash: UInt32?
        public var ticketVendorHash: UInt32?
        public var triumphsPresentationNodeHash: UInt32?

        public enum CodingKeys: String, CodingKey {
            case color
            case displayProperties
            case endTime
            case hash
            case images
            case index
            case linkRedirectPath
            case redacted
            case sealPresentationNodeHash
            case ticketCurrencyItemHash
            case ticketVendorCategoryHash
            case ticketVendorHash
            case triumphsPresentationNodeHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            color = try? container.decode(Destiny.Misc.DestinyColor.self, forKey: CodingKeys.color)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            let endTime = try? container.decode(String.self, forKey: CodingKeys.endTime)
            if let endTime, let endTimeInt = Int64(endTime) {
                self.endTime = endTimeInt
            } else {
                self.endTime = nil
            }
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            images = try? container.decode(Destiny.Definitions.Seasons.DestinyEventCardImages.self, forKey: CodingKeys.images)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            linkRedirectPath = try? container.decode(String.self, forKey: CodingKeys.linkRedirectPath)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            sealPresentationNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.sealPresentationNodeHash)
            ticketCurrencyItemHash = try? container.decode(UInt32.self, forKey: CodingKeys.ticketCurrencyItemHash)
            ticketVendorCategoryHash = try? container.decode(UInt32.self, forKey: CodingKeys.ticketVendorCategoryHash)
            ticketVendorHash = try? container.decode(UInt32.self, forKey: CodingKeys.ticketVendorHash)
            triumphsPresentationNodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.triumphsPresentationNodeHash)
        }
    }
}
