// This File was auto generated by BungoKitGen
//
// File: DestinyMilestoneContent.swift

import Foundation

public extension Destiny.Milestones {
    /// Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint.
    struct DestinyMilestoneContent: Codable {
        /// The "About this Milestone" text from the Firehose.
        public var about: String?
        /// If DPS has defined items related to this Milestone, they can categorize those items in the Firehose. That data will then be returned as item categories here.
        public var itemCategories: [Destiny.Milestones.DestinyMilestoneContentItemCategory]?
        /// The Current Status of the Milestone, as driven by the Firehose.
        public var status: String?
        /// A list of tips, provided by the Firehose.
        public var tips: [String]?

        public enum CodingKeys: String, CodingKey {
            case about
            case itemCategories
            case status
            case tips
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            about = try? container.decode(String.self, forKey: CodingKeys.about)
            itemCategories = try? container.decode([Destiny.Milestones.DestinyMilestoneContentItemCategory].self, forKey: CodingKeys.itemCategories)
            status = try? container.decode(String.self, forKey: CodingKeys.status)
            tips = try? container.decode([String].self, forKey: CodingKeys.tips)
        }
    }
}
