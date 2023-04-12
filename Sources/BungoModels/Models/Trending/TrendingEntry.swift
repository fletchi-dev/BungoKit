// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: TrendingEntry.swift

import Foundation

public extension Trending {
    /// The list entry view for trending items. Returns just enough to show the item on the trending page.
    struct TrendingEntry: Codable {
        /// If the entry has a date at which it was created, this is that date.
        public var creationDate: Date?

        /// The localized "display name/article title/'primary localized identifier'" of the entity.
        public var displayName: String?

        public var endDate: Date?

        /// An enum - unfortunately - dictating all of the possible kinds of trending items that you might get in your result set, in case you want to do custom rendering or call to get the details of the item.
        public var entityType: Trending.TrendingEntryType?

        /// If isFeatured, this image will be populated with whatever the featured image is. Note that this will likely be a very large image, so don't use it all the time.
        public var featureImage: String?

        /// We don't know whether the identifier will be a string, a uint, or a long... so we're going to cast it all to a string. But either way, we need any trending item created to have a single unique identifier for its type.
        public var identifier: String?

        public var image: String?

        public var isFeatured: Bool?

        /// If the item is of entityType TrendingEntryType.Container, it may have items - also Trending Entries - contained within it. This is the ordered list of those to display under the Container's header.
        public var items: [Trending.TrendingEntry]?

        public var link: String?

        /// If this is populated, the entry has a related MP4 video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo
        public var mp4Video: String?

        public var startDate: Date?

        /// If the entity has a localized tagline/subtitle/motto/whatever, that is found here.
        public var tagline: String?

        /// If this is populated, the entry has a related WebM video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo
        public var webmVideo: String?

        /// The weighted score of this trending item.
        public var weight: Double?

        public enum CodingKeys: String, CodingKey {
            case creationDate
            case displayName
            case endDate
            case entityType
            case featureImage
            case identifier
            case image
            case isFeatured
            case items
            case link
            case mp4Video
            case startDate
            case tagline
            case webmVideo
            case weight
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            creationDate = try? container.decode(Date.self, forKey: CodingKeys.creationDate)
            displayName = try? container.decode(String.self, forKey: CodingKeys.displayName)
            endDate = try? container.decode(Date.self, forKey: CodingKeys.endDate)
            entityType = try? container.decode(Trending.TrendingEntryType.self, forKey: CodingKeys.entityType)
            featureImage = try? container.decode(String.self, forKey: CodingKeys.featureImage)
            identifier = try? container.decode(String.self, forKey: CodingKeys.identifier)
            image = try? container.decode(String.self, forKey: CodingKeys.image)
            isFeatured = try? container.decode(Bool.self, forKey: CodingKeys.isFeatured)
            items = try? container.decode([Trending.TrendingEntry].self, forKey: CodingKeys.items)
            link = try? container.decode(String.self, forKey: CodingKeys.link)
            mp4Video = try? container.decode(String.self, forKey: CodingKeys.mp4Video)
            startDate = try? container.decode(Date.self, forKey: CodingKeys.startDate)
            tagline = try? container.decode(String.self, forKey: CodingKeys.tagline)
            webmVideo = try? container.decode(String.self, forKey: CodingKeys.webmVideo)
            weight = try? container.decode(Double.self, forKey: CodingKeys.weight)
        }
    }
}
