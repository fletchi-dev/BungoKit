// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyActivity.swift

import Foundation

public extension Destiny {
    /// Represents the "Live" data that we can obtain about a Character's status with a specific Activity. This will tell you whether the character can participate in the activity, as well as some other basic mutable information.
    /// Meant to be combined with static DestinyActivityDefinition data for a full picture of the Activity.
    struct DestinyActivity: Codable {
        /// The hash identifier of the Activity. Use this to look up the DestinyActivityDefinition of the activity.
        public var activityHash: UInt32?

        /// The set of activity options for this activity, keyed by an identifier that's unique for this activity (not guaranteed to be unique between or across all activities, though should be unique for every *variant* of a given *conceptual* activity: for instance, the original D2 Raid has many variant DestinyActivityDefinitions. While other activities could potentially have the same option hashes, for any given D2 base Raid variant the hash will be unique).
        /// As a concrete example of this data, the hashes you get for Raids will correspond to the currently active "Challenge Mode".
        /// We don't have any human readable information for these, but saavy 3rd party app users could manually associate the key (a hash identifier for the "option" that is enabled/disabled) and the value (whether it's enabled or disabled presently)
        /// On our side, we don't necessarily even know what these are used for (the game designers know, but we don't), and we have no human readable data for them. In order to use them, you will have to do some experimentation.
        public var booleanActivityOptions: [Int: Bool]?

        /// If true, the user is allowed to join with another Fireteam in this activity.
        public var canJoin: Bool?

        /// If true, the user is allowed to lead a Fireteam into this activity.
        public var canLead: Bool?

        public var challenges: [Destiny.Challenges.DestinyChallengeStatus]?

        /// A DestinyActivityDifficultyTier enum value indicating the difficulty of the activity.
        public var difficultyTier: Destiny.DestinyActivityDifficultyTier?

        /// The difficulty level of the activity, if applicable.
        public var displayLevel: Int32?

        /// If true, we both have the ability to know that the user has completed this activity and they have completed it. Unfortunately, we can't necessarily know this for all activities. As such, this should probably only be used if you already know in advance which specific activities you wish to check.
        public var isCompleted: Bool?

        /// If true, then the activity should have a "new" indicator in the Director UI.
        public var isNew: Bool?

        /// If true, the user should be able to see this activity.
        public var isVisible: Bool?

        /// If returned, this is the index into the DestinyActivityDefinition's "loadouts" property, indicating the currently active loadout requirements.
        public var loadoutRequirementIndex: Int32?

        /// If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.
        /// Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live.
        public var modifierHashes: [UInt32]?

        /// The recommended light level for the activity, if applicable.
        public var recommendedLight: Int32?

        public enum CodingKeys: String, CodingKey {
            case activityHash
            case booleanActivityOptions
            case canJoin
            case canLead
            case challenges
            case difficultyTier
            case displayLevel
            case isCompleted
            case isNew
            case isVisible
            case loadoutRequirementIndex
            case modifierHashes
            case recommendedLight
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activityHash = try? container.decode(UInt32.self, forKey: CodingKeys.activityHash)
            booleanActivityOptions = try? container.decode([Int: Bool].self, forKey: CodingKeys.booleanActivityOptions)
            canJoin = try? container.decode(Bool.self, forKey: CodingKeys.canJoin)
            canLead = try? container.decode(Bool.self, forKey: CodingKeys.canLead)
            challenges = try? container.decode([Destiny.Challenges.DestinyChallengeStatus].self, forKey: CodingKeys.challenges)
            difficultyTier = try? container.decode(Destiny.DestinyActivityDifficultyTier.self, forKey: CodingKeys.difficultyTier)
            displayLevel = try? container.decode(Int32.self, forKey: CodingKeys.displayLevel)
            isCompleted = try? container.decode(Bool.self, forKey: CodingKeys.isCompleted)
            isNew = try? container.decode(Bool.self, forKey: CodingKeys.isNew)
            isVisible = try? container.decode(Bool.self, forKey: CodingKeys.isVisible)
            loadoutRequirementIndex = try? container.decode(Int32.self, forKey: CodingKeys.loadoutRequirementIndex)
            modifierHashes = try? container.decode([UInt32].self, forKey: CodingKeys.modifierHashes)
            recommendedLight = try? container.decode(Int32.self, forKey: CodingKeys.recommendedLight)
        }
    }
}
