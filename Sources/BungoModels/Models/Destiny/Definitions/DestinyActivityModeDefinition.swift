// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyActivityModeDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// This definition represents an "Activity Mode" as it exists in the Historical Stats endpoints. An individual Activity Mode represents a collection of activities that are played in a certain way. For example, Nightfall Strikes are part of a "Nightfall" activity mode, and any activities played as the PVP mode "Clash" are part of the "Clash activity mode.
    /// Activity modes are nested under each other in a hierarchy, so that if you ask for - for example - "AllPvP", you will get any PVP activities that the user has played, regardless of what specific PVP mode was being played.
    struct DestinyActivityModeDefinition: Codable {
        /// The type of play being performed in broad terms (PVP, PVE)
        public var activityModeCategory: Destiny.DestinyActivityModeCategory?

        /// If this exists, the mode has specific Activities (referred to by the Key) that should instead map to other Activity Modes when they are played. This was useful in D1 for Private Matches, where we wanted to have Private Matches as an activity mode while still referring to the specific mode being played.
        public var activityModeMappings: [UInt32: Destiny.HistoricalStats.Definitions.DestinyActivityModeType]?

        /// If FALSE, we want to ignore this type when we're showing activity modes in BNet UI. It will still be returned in case 3rd parties want to use it for any purpose.
        public var display: Bool?

        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// A Friendly identifier you can use for referring to this Activity Mode. We really only used this in our URLs, so... you know, take that for whatever it's worth.
        public var friendlyName: String?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If true, this mode is an aggregation of other, more specific modes rather than being a mode in itself. This includes modes that group Features/Events rather than Gameplay, such as Trials of The Nine: Trials of the Nine being an Event that is interesting to see aggregate data for, but when you play the activities within Trials of the Nine they are more specific activity modes such as Clash.
        public var isAggregateMode: Bool?

        /// If True, this mode has oppositional teams fighting against each other rather than "Free-For-All" or Co-operative modes of play.
        /// Note that Aggregate modes are never marked as team based, even if they happen to be team based at the moment. At any time, an aggregate whose subordinates are only team based could be changed so that one or more aren't team based, and then this boolean won't make much sense (the aggregation would become "sometimes team based"). Let's not deal with that right now.
        public var isTeamBased: Bool?

        /// The Enumeration value for this Activity Mode. Pass this identifier into Stats endpoints to get aggregate stats for this mode.
        public var modeType: Destiny.HistoricalStats.Definitions.DestinyActivityModeType?

        /// The relative ordering of activity modes.
        public var order: Int32?

        /// The hash identifiers of the DestinyActivityModeDefinitions that represent all of the "parent" modes for this mode. For instance, the Nightfall Mode is also a member of AllStrikes and AllPvE.
        public var parentHashes: [UInt32]?

        /// If this activity mode has a related PGCR image, this will be the path to said image.
        public var pgcrImage: String?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case activityModeCategory
            case activityModeMappings
            case display
            case displayProperties
            case friendlyName
            case hash
            case index
            case isAggregateMode
            case isTeamBased
            case modeType
            case order
            case parentHashes
            case pgcrImage
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityModeCategory = try? container.decode(Destiny.DestinyActivityModeCategory.self, forKey: CodingKeys.activityModeCategory)
            activityModeMappings = try? container.decode([UInt32: Destiny.HistoricalStats.Definitions.DestinyActivityModeType].self, forKey: CodingKeys.activityModeMappings)
            display = try? container.decode(Bool.self, forKey: CodingKeys.display)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            friendlyName = try? container.decode(String.self, forKey: CodingKeys.friendlyName)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            isAggregateMode = try? container.decode(Bool.self, forKey: CodingKeys.isAggregateMode)
            isTeamBased = try? container.decode(Bool.self, forKey: CodingKeys.isTeamBased)
            modeType = try? container.decode(Destiny.HistoricalStats.Definitions.DestinyActivityModeType.self, forKey: CodingKeys.modeType)
            order = try? container.decode(Int32.self, forKey: CodingKeys.order)
            parentHashes = try? container.decode([UInt32].self, forKey: CodingKeys.parentHashes)
            pgcrImage = try? container.decode(String.self, forKey: CodingKeys.pgcrImage)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
