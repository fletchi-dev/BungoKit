// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyItemActionBlockDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// If an item can have an action performed on it (like "Dismantle"), it will be defined here if you care.
    struct DestinyItemActionBlockDefinition: Codable {
        /// The internal identifier for the action.
        public var actionTypeLabel: String?

        /// If true, the entire stack is deleted when the action completes.
        public var consumeEntireStack: Bool?

        /// If true, the item is deleted when the action completes.
        public var deleteOnAction: Bool?

        /// The content has this property, however it's not entirely clear how it is used.
        public var isPositive: Bool?

        /// The icon associated with the overlay screen for the action, if any.
        public var overlayIcon: String?

        /// If the action has an overlay screen associated with it, this is the name of that screen. Unfortunately, we cannot return the screen's data itself.
        public var overlayScreenName: String?

        /// If performing this action earns you Progression, this is the list of progressions and values granted for those progressions by performing this action.
        public var progressionRewards: [Destiny.Definitions.DestinyProgressionRewardDefinition]?

        /// The identifier hash for the Cooldown associated with this action. We have not pulled this data yet for you to have more data to use for cooldowns.
        public var requiredCooldownHash: UInt32?

        /// The number of seconds to delay before allowing this action to be performed again.
        public var requiredCooldownSeconds: Int32?

        /// If the action requires other items to exist or be destroyed, this is the list of those items and requirements.
        public var requiredItems: [Destiny.Definitions.DestinyItemActionRequiredItemDefinition]?

        /// Theoretically, an item could have a localized string for a hint about the location in which the action should be performed. In practice, no items yet have this property.
        public var requiredLocation: String?

        /// If true, this action will be performed as soon as you earn this item. Some rewards work this way, providing you a single item to pick up from a reward-granting vendor in-game and then immediately consuming itself to provide you multiple items.
        public var useOnAcquire: Bool?

        /// Localized text describing the action being performed.
        public var verbDescription: String?

        /// Localized text for the verb of the action being performed.
        public var verbName: String?

        public enum CodingKeys: String, CodingKey {
            case actionTypeLabel
            case consumeEntireStack
            case deleteOnAction
            case isPositive
            case overlayIcon
            case overlayScreenName
            case progressionRewards
            case requiredCooldownHash
            case requiredCooldownSeconds
            case requiredItems
            case requiredLocation
            case useOnAcquire
            case verbDescription
            case verbName
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            actionTypeLabel = try? container.decode(String.self, forKey: CodingKeys.actionTypeLabel)
            consumeEntireStack = try? container.decode(Bool.self, forKey: CodingKeys.consumeEntireStack)
            deleteOnAction = try? container.decode(Bool.self, forKey: CodingKeys.deleteOnAction)
            isPositive = try? container.decode(Bool.self, forKey: CodingKeys.isPositive)
            overlayIcon = try? container.decode(String.self, forKey: CodingKeys.overlayIcon)
            overlayScreenName = try? container.decode(String.self, forKey: CodingKeys.overlayScreenName)
            progressionRewards = try? container.decode([Destiny.Definitions.DestinyProgressionRewardDefinition].self, forKey: CodingKeys.progressionRewards)
            requiredCooldownHash = try? container.decode(UInt32.self, forKey: CodingKeys.requiredCooldownHash)
            requiredCooldownSeconds = try? container.decode(Int32.self, forKey: CodingKeys.requiredCooldownSeconds)
            requiredItems = try? container.decode([Destiny.Definitions.DestinyItemActionRequiredItemDefinition].self, forKey: CodingKeys.requiredItems)
            requiredLocation = try? container.decode(String.self, forKey: CodingKeys.requiredLocation)
            useOnAcquire = try? container.decode(Bool.self, forKey: CodingKeys.useOnAcquire)
            verbDescription = try? container.decode(String.self, forKey: CodingKeys.verbDescription)
            verbName = try? container.decode(String.self, forKey: CodingKeys.verbName)
        }
    }
}
