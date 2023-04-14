// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyRecordTitleBlock.swift

import Foundation

public extension Destiny.Definitions.Records {
    struct DestinyRecordTitleBlock: Codable {
        public var gildingTrackingRecordHash: UInt32?

        public var hasTitle: Bool?

        public var titlesByGender: [Int32: String]?

        /// For those who prefer to use the definitions.
        public var titlesByGenderHash: [UInt32: String]?

        public enum CodingKeys: String, CodingKey {
            case gildingTrackingRecordHash
            case hasTitle
            case titlesByGender
            case titlesByGenderHash
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            gildingTrackingRecordHash = try? container.decode(UInt32.self, forKey: CodingKeys.gildingTrackingRecordHash)
            hasTitle = try? container.decode(Bool.self, forKey: CodingKeys.hasTitle)
            titlesByGender = try? container.decode([Int32: String].self, forKey: CodingKeys.titlesByGender)
            titlesByGenderHash = try? container.decode([UInt32: String].self, forKey: CodingKeys.titlesByGenderHash)
        }
    }
}
