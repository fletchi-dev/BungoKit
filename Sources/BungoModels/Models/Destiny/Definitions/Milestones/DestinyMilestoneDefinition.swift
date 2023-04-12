// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyMilestoneDefinition.swift

import Foundation

public extension Destiny.Definitions.Milestones {
    /// Milestones are an in-game concept where they're attempting to tell you what you can do next in-game.
    /// If that sounds a lot like Advisors in Destiny 1, it is! So we threw out Advisors in the Destiny 2 API and tacked all of the data we would have put on Advisors onto Milestones instead.
    /// Each Milestone represents something going on in the game right now:
    /// - A "ritual activity" you can perform, like nightfall
    /// - A "special event" that may have activities related to it, like Taco Tuesday (there's no Taco Tuesday in Destiny 2)
    /// - A checklist you can fulfill, like helping your Clan complete all of its weekly objectives
    /// - A tutorial quest you can play through, like the introduction to the Crucible.
    /// Most of these milestones appear in game as well. Some of them are BNet only, because we're so extra. You're welcome.
    /// There are some important caveats to understand about how we currently render Milestones and their deficiencies. The game currently doesn't have any content that actually tells you oughtright *what* the Milestone is: that is to say, what you'll be doing. The best we get is either a description of the overall Milestone, or of the Quest that the Milestone is having you partake in: which is usually something that assumes you already know what it's talking about, like "Complete 5 Challenges". 5 Challenges for what? What's a challenge? These are not questions that the Milestone data will answer for you unfortunately.
    /// This isn't great, and in the future I'd like to add some custom text to give you more contextual information to pass on to your users. But for now, you can do what we do to render what little display info we do have:
    /// Start by looking at the currently active quest (ideally, you've fetched DestinyMilestone or DestinyPublicMilestone data from the API, so you know the currently active quest for the Milestone in question). Look up the Quests property in the Milestone Definition, and check if it has display properties. If it does, show that as the description of the Milestone. If it doesn't, fall back on the Milestone's description.
    /// This approach will let you avoid, whenever possible, the even less useful (and sometimes nonexistant) milestone-level names and descriptions.
    struct DestinyMilestoneDefinition: Codable {
        /// A Milestone can now be represented by one or more activities directly (without a backing Quest), and that activity can have many challenges, modifiers, and related to it.
        public var activities: [Destiny.Definitions.Milestones.DestinyMilestoneChallengeActivityDefinition]?

        public var defaultOrder: Int32?

        /// A hint to the UI to indicate what to show as the display properties for this Milestone when showing "Live" milestone data. Feel free to show more than this if desired: this hint is meant to simplify our own UI, but it may prove useful to you as well.
        public var displayPreference: Destiny.Definitions.Milestones.DestinyMilestoneDisplayPreference?

        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// If TRUE, "Explore Destiny" (the front page of BNet and the companion app) prioritize using the activity image over any overriding Quest or Milestone image provided. This unfortunate hack is brought to you by Trials of The Nine.
        public var explorePrioritizesActivityImage: Bool?

        /// If the milestone has a friendly identifier for association with other features - such as Recruiting - that identifier can be found here. This is "friendly" in that it looks better in a URL than whatever the identifier for the Milestone actually is.
        public var friendlyName: String?

        /// A shortcut for clients - and the server - to understand whether we can predict the start and end dates for this event. In practice, there are multiple ways that an event could have predictable date ranges, but not all events will be able to be predicted via any mechanism (for instance, events that are manually triggered on and off)
        public var hasPredictableDates: Bool?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// A custom image someone made just for the milestone. Isn't that special?
        public var image: String?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// Some milestones are explicit objectives that you can see and interact with in the game. Some milestones are more conceptual, built by BNet to help advise you on activities and events that happen in-game but that aren't explicitly shown in game as Milestones. If this is TRUE, you can see this as a milestone in the game. If this is FALSE, it's an event or activity you can participate in, but you won't see it as a Milestone in the game's UI.
        public var isInGameMilestone: Bool?

        /// An enumeration listing one of the possible types of milestones. Check out the DestinyMilestoneType enum for more info!
        public var milestoneType: Destiny.Definitions.Milestones.DestinyMilestoneType?

        /// The full set of possible Quests that give the overview of the Milestone event/activity in question. Only one of these can be active at a time for a given Conceptual Milestone, but many of them may be "available" for the user to choose from. (for instance, with Milestones you can choose from the three available Quests, but only one can be active at a time) Keyed by the quest item.
        /// As of Forsaken (~September 2018), Quest-style Milestones are being removed for many types of activities. There will likely be further revisions to the Milestone concept in the future.
        public var quests: [Int: Destiny.Definitions.Milestones.DestinyMilestoneQuestDefinition]?

        /// If True, then the Milestone has been integrated with BNet's recruiting feature.
        public var recruitable: Bool?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        /// If this milestone can provide rewards, this will define the categories into which the individual reward entries are placed.
        /// This is keyed by the Category's hash, which is only guaranteed to be unique within a given Milestone.
        public var rewards: [Int: Destiny.Definitions.Milestones.DestinyMilestoneRewardCategoryDefinition]?

        /// If TRUE, this entry should be returned in the list of milestones for the "Explore Destiny" (i.e. new BNet homepage) features of Bungie.net (as long as the underlying event is active) Note that this is a property specifically used by BNet and the companion app for the "Live Events" feature of the front page/welcome view: it's not a reflection of what you see in-game.
        public var showInExplorer: Bool?

        /// Determines whether we'll show this Milestone in the user's personal Milestones list.
        public var showInMilestones: Bool?

        /// Sometimes, milestones will have arbitrary values associated with them that are of interest to us or to third party developers. This is the collection of those values' definitions, keyed by the identifier of the value and providing useful definition information such as localizable names and descriptions for the value.
        public var values: [String: Destiny.Definitions.Milestones.DestinyMilestoneValueDefinition]?

        /// Sometimes, milestones will have rewards provided by Vendors. This definition gives the information needed to understand which vendors are relevant, the order in which they should be returned if order matters, and the conditions under which the Vendor is relevant to the user.
        public var vendors: [Destiny.Definitions.Milestones.DestinyMilestoneVendorDefinition]?

        /// If you're going to show Vendors for the Milestone, you can use this as a localized "header" for the section where you show that vendor data. It'll provide a more context-relevant clue about what the vendor's role is in the Milestone.
        public var vendorsDisplayTitle: String?

        public enum CodingKeys: String, CodingKey {
            case activities
            case defaultOrder
            case displayPreference
            case displayProperties
            case explorePrioritizesActivityImage
            case friendlyName
            case hasPredictableDates
            case hash
            case image
            case index
            case isInGameMilestone
            case milestoneType
            case quests
            case recruitable
            case redacted
            case rewards
            case showInExplorer
            case showInMilestones
            case values
            case vendors
            case vendorsDisplayTitle
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activities = try? container.decode([Destiny.Definitions.Milestones.DestinyMilestoneChallengeActivityDefinition].self, forKey: CodingKeys.activities)
            defaultOrder = try? container.decode(Int32.self, forKey: CodingKeys.defaultOrder)
            displayPreference = try? container.decode(Destiny.Definitions.Milestones.DestinyMilestoneDisplayPreference.self, forKey: CodingKeys.displayPreference)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            explorePrioritizesActivityImage = try? container.decode(Bool.self, forKey: CodingKeys.explorePrioritizesActivityImage)
            friendlyName = try? container.decode(String.self, forKey: CodingKeys.friendlyName)
            hasPredictableDates = try? container.decode(Bool.self, forKey: CodingKeys.hasPredictableDates)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            image = try? container.decode(String.self, forKey: CodingKeys.image)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            isInGameMilestone = try? container.decode(Bool.self, forKey: CodingKeys.isInGameMilestone)
            milestoneType = try? container.decode(Destiny.Definitions.Milestones.DestinyMilestoneType.self, forKey: CodingKeys.milestoneType)
            quests = try? container.decode([Int: Destiny.Definitions.Milestones.DestinyMilestoneQuestDefinition].self, forKey: CodingKeys.quests)
            recruitable = try? container.decode(Bool.self, forKey: CodingKeys.recruitable)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            rewards = try? container.decode([Int: Destiny.Definitions.Milestones.DestinyMilestoneRewardCategoryDefinition].self, forKey: CodingKeys.rewards)
            showInExplorer = try? container.decode(Bool.self, forKey: CodingKeys.showInExplorer)
            showInMilestones = try? container.decode(Bool.self, forKey: CodingKeys.showInMilestones)
            values = try? container.decode([String: Destiny.Definitions.Milestones.DestinyMilestoneValueDefinition].self, forKey: CodingKeys.values)
            vendors = try? container.decode([Destiny.Definitions.Milestones.DestinyMilestoneVendorDefinition].self, forKey: CodingKeys.vendors)
            vendorsDisplayTitle = try? container.decode(String.self, forKey: CodingKeys.vendorsDisplayTitle)
        }
    }
}
