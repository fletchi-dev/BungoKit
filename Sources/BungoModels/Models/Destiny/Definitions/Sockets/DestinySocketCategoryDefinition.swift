// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinySocketCategoryDefinition.swift

import Foundation

public extension Destiny.Definitions.Sockets {
    /// Sockets on an item are organized into Categories visually.
    /// You can find references to the socket category defined on an item's DestinyInventoryItemDefinition.sockets.socketCategories property.
    /// This has the display information for rendering the categories' header, and a hint for how the UI should handle showing this category.
    /// The shitty thing about this, however, is that the socket categories' UI style can be overridden by the item's UI style. For instance, the Socket Category used by Emote Sockets says it's "consumable," but that's a lie: they're all reusable, and overridden by the detail UI pages in ways that we can't easily account for in the API.
    /// As a result, I will try to compile these rules into the individual sockets on items, and provide the best hint possible there through the plugSources property. In the future, I may attempt to use this information in conjunction with the item to provide a more usable UI hint on the socket layer, but for now improving the consistency of plugSources is the best I have time to provide. (See https://github.com/Bungie-net/api/issues/522 for more info)
    struct DestinySocketCategoryDefinition: Codable {
        /// Same as uiCategoryStyle, but in a more usable enumeration form.
        public var categoryStyle: Destiny.DestinySocketCategoryStyle?

        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        /// A string hinting to the game's UI system about how the sockets in this category should be displayed.
        /// BNet doesn't use it: it's up to you to find valid values and make your own special UI if you want to honor this category style.
        public var uiCategoryStyle: UInt32?

        public enum CodingKeys: String, CodingKey {
            case categoryStyle
            case displayProperties
            case hash
            case index
            case redacted
            case uiCategoryStyle
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            categoryStyle = try? container.decode(Destiny.DestinySocketCategoryStyle.self, forKey: CodingKeys.categoryStyle)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            uiCategoryStyle = try? container.decode(UInt32.self, forKey: CodingKeys.uiCategoryStyle)
        }
    }
}
