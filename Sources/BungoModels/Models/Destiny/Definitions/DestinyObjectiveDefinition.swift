// This File was auto generated by BungoKitGen
//
// File: DestinyObjectiveDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Defines an "Objective".
    /// An objective is a specific task you should accomplish in the game. These are referred to by:
    /// - Quest Steps (which are DestinyInventoryItemDefinition entities with Objectives)
    /// - Challenges (which are Objectives defined on an DestinyActivityDefintion)
    /// - Milestones (which refer to Objectives that are defined on both Quest Steps and Activities)
    /// - Anything else that the designers decide to do later.
    /// Objectives have progress, a notion of having been Completed, human readable data describing the task to be accomplished, and a lot of optional tack-on data that can enhance the information provided about the task.
    struct DestinyObjectiveDefinition: Codable {
        /// If true, the value is allowed to go negative.
        public var allowNegativeValue: Bool?
        /// If True, the progress will continue even beyond the point where the objective met its minimum completion requirements. Your UI will have to accommodate it.
        public var allowOvercompletion: Bool?
        /// If true, you can effectively "un-complete" this objective if you lose progress after crossing the completion threshold.
        /// If False, once you complete the task it will remain completed forever by locking the value.
        public var allowValueChangeWhenCompleted: Bool?
        /// The style to use when the objective is completed.
        public var completedValueStyle: Destiny.DestinyUnlockValueUIStyle?
        /// The value that the unlock value defined in unlockValueHash must reach in order for the objective to be considered Completed. Used in calculating progress and completion status.
        public var completionValue: Int32?
        /// Ideally, this should tell you what your task is. I'm not going to lie to you though. Sometimes this doesn't have useful information at all. Which sucks, but there's nothing either of us can do about it.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// The style to use when the objective is still in progress.
        public var inProgressValueStyle: Destiny.DestinyUnlockValueUIStyle?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        /// If true, completion means having an unlock value less than or equal to the completionValue.
        /// If False, completion means having an unlock value greater than or equal to the completionValue.
        public var isCountingDownward: Bool?
        /// OPTIONAL: a hash identifier for the location at which this objective must be accomplished, if there is a location defined. Look up the DestinyLocationDefinition for this hash for that additional location info.
        public var locationHash: UInt32?
        /// If nonzero, this is the minimum value at which the objective's progression should be shown. Otherwise, don't show it yet.
        public var minimumVisibilityThreshold: Int32?
        /// If this objective enables Perks intrinsically, the conditions for that enabling are defined here.
        public var perks: Destiny.Definitions.DestinyObjectivePerkEntryDefinition?
        /// Text to describe the progress bar.
        public var progressDescription: String?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        /// A shortcut for determining the most restrictive gating that this Objective is set to use. This includes both the dynamic determination of progress and of completion values. See the DestinyGatingScope enum's documentation for more details.
        public var scope: Destiny.DestinyGatingScope?
        /// If True, you should continue showing the progression value in the UI after it's complete. I mean, we already do that in BNet anyways, but if you want to be better behaved than us you could honor this flag.
        public var showValueOnComplete: Bool?
        /// If this objective enables modifications on a player's stats intrinsically, the conditions are defined here.
        public var stats: Destiny.Definitions.DestinyObjectiveStatEntryDefinition?
        /// Objectives can have arbitrary UI-defined identifiers that define the style applied to objectives. For convenience, known UI labels will be defined in the uiStyle enum value.
        public var uiLabel: String?
        /// If the objective has a known UI label value, this property will represent it.
        public var uiStyle: Destiny.DestinyObjectiveUiStyle?
        /// The UI style applied to the objective. It's an enum, take a look at DestinyUnlockValueUIStyle for details of the possible styles. Use this info as you wish to customize your UI.
        /// DEPRECATED: This is no longer populated by Destiny 2 game content. Please use inProgressValueStyle and completedValueStyle instead.
        public var valueStyle: Destiny.DestinyUnlockValueUIStyle?

        public enum CodingKeys: String, CodingKey {
            case allowNegativeValue
            case allowOvercompletion
            case allowValueChangeWhenCompleted
            case completedValueStyle
            case completionValue
            case displayProperties
            case hash
            case inProgressValueStyle
            case index
            case isCountingDownward
            case locationHash
            case minimumVisibilityThreshold
            case perks
            case progressDescription
            case redacted
            case scope
            case showValueOnComplete
            case stats
            case uiLabel
            case uiStyle
            case valueStyle
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            allowNegativeValue = try? container.decode(Bool.self, forKey: CodingKeys.allowNegativeValue)
            allowOvercompletion = try? container.decode(Bool.self, forKey: CodingKeys.allowOvercompletion)
            allowValueChangeWhenCompleted = try? container.decode(Bool.self, forKey: CodingKeys.allowValueChangeWhenCompleted)
            completedValueStyle = try? container.decode(Destiny.DestinyUnlockValueUIStyle.self, forKey: CodingKeys.completedValueStyle)
            completionValue = try? container.decode(Int32.self, forKey: CodingKeys.completionValue)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            inProgressValueStyle = try? container.decode(Destiny.DestinyUnlockValueUIStyle.self, forKey: CodingKeys.inProgressValueStyle)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            isCountingDownward = try? container.decode(Bool.self, forKey: CodingKeys.isCountingDownward)
            locationHash = try? container.decode(UInt32.self, forKey: CodingKeys.locationHash)
            minimumVisibilityThreshold = try? container.decode(Int32.self, forKey: CodingKeys.minimumVisibilityThreshold)
            perks = try? container.decode(Destiny.Definitions.DestinyObjectivePerkEntryDefinition.self, forKey: CodingKeys.perks)
            progressDescription = try? container.decode(String.self, forKey: CodingKeys.progressDescription)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            scope = try? container.decode(Destiny.DestinyGatingScope.self, forKey: CodingKeys.scope)
            showValueOnComplete = try? container.decode(Bool.self, forKey: CodingKeys.showValueOnComplete)
            stats = try? container.decode(Destiny.Definitions.DestinyObjectiveStatEntryDefinition.self, forKey: CodingKeys.stats)
            uiLabel = try? container.decode(String.self, forKey: CodingKeys.uiLabel)
            uiStyle = try? container.decode(Destiny.DestinyObjectiveUiStyle.self, forKey: CodingKeys.uiStyle)
            valueStyle = try? container.decode(Destiny.DestinyUnlockValueUIStyle.self, forKey: CodingKeys.valueStyle)
        }
    }
}
