// This File was auto generated by BungoKitGen
//
// File: DestinyPresentationNodeDefinition.swift

import Foundation

public extension Destiny.Definitions.Presentation {
    /// A PresentationNode is an entity that represents a logical grouping of other entities visually/organizationally.
    /// For now, Presentation Nodes may contain the following... but it may be used for more in the future:
    /// - Collectibles - Records (Or, as the public will call them, "Triumphs." Don't ask me why we're overloading the term "Triumph", it still hurts me to think about it) - Metrics (aka Stat Trackers) - Other Presentation Nodes, allowing a tree of Presentation Nodes to be created
    /// Part of me wants to break these into conceptual definitions per entity being collected, but the possibility of these different types being mixed in the same UI and the possibility that it could actually be more useful to return the "bare metal" presentation node concept has resulted in me deciding against that for the time being.
    /// We'll see if I come to regret this as well.
    struct DestinyPresentationNodeDefinition: Codable {
        /// The child entities contained by this presentation node.
        public var children: Destiny.Definitions.Presentation.DestinyPresentationNodeChildrenBlock?
        /// If this presentation node has an associated "Record" that you can accomplish for completing its children, this is the identifier of that Record.
        public var completionRecordHash: UInt32?
        /// If this presentation node has children, but the game doesn't let you inspect the details of those children, that is indicated here.
        public var disableChildSubscreenNavigation: Bool?
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?
        /// A hint for how to display this presentation node when it's shown in a list.
        public var displayStyle: Destiny.DestinyPresentationDisplayStyle?
        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?
        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?
        public var maxCategoryRecordScore: Int32?
        public var nodeType: Destiny.DestinyPresentationNodeType?
        /// If this presentation node shows a related objective (for instance, if it tracks the progress of its children), the objective being tracked is indicated here.
        public var objectiveHash: UInt32?
        /// The original icon for this presentation node, before we futzed with it.
        public var originalIcon: String?
        /// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
        public var parentNodeHashes: [UInt32]?
        public var presentationNodeType: Destiny.DestinyPresentationNodeType?
        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?
        /// The requirements for being able to interact with this presentation node and its children.
        public var requirements: Destiny.Definitions.Presentation.DestinyPresentationNodeRequirementsBlock?
        /// Some presentation nodes are meant to be explicitly shown on the "root" or "entry" screens for the feature to which they are related. You should use this icon when showing them on such a view, if you have a similar "entry point" view in your UI. If you don't have a UI, then I guess it doesn't matter either way does it?
        public var rootViewIcon: String?
        /// Indicates whether this presentation node's state is determined on a per-character or on an account-wide basis.
        public var scope: Destiny.DestinyScope?
        /// A hint for how to display this presentation node when it's shown in its own detail screen.
        public var screenStyle: Destiny.DestinyPresentationScreenStyle?
        public var traitHashes: [UInt32]?
        public var traitIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case children
            case completionRecordHash
            case disableChildSubscreenNavigation
            case displayProperties
            case displayStyle
            case hash
            case index
            case maxCategoryRecordScore
            case nodeType
            case objectiveHash
            case originalIcon
            case parentNodeHashes
            case presentationNodeType
            case redacted
            case requirements
            case rootViewIcon
            case scope
            case screenStyle
            case traitHashes
            case traitIds
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            children = try? container.decode(Destiny.Definitions.Presentation.DestinyPresentationNodeChildrenBlock.self, forKey: CodingKeys.children)
            completionRecordHash = try? container.decode(UInt32.self, forKey: CodingKeys.completionRecordHash)
            disableChildSubscreenNavigation = try? container.decode(Bool.self, forKey: CodingKeys.disableChildSubscreenNavigation)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            displayStyle = try? container.decode(Destiny.DestinyPresentationDisplayStyle.self, forKey: CodingKeys.displayStyle)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            maxCategoryRecordScore = try? container.decode(Int32.self, forKey: CodingKeys.maxCategoryRecordScore)
            nodeType = try? container.decode(Destiny.DestinyPresentationNodeType.self, forKey: CodingKeys.nodeType)
            objectiveHash = try? container.decode(UInt32.self, forKey: CodingKeys.objectiveHash)
            originalIcon = try? container.decode(String.self, forKey: CodingKeys.originalIcon)
            parentNodeHashes = try? container.decode([UInt32].self, forKey: CodingKeys.parentNodeHashes)
            presentationNodeType = try? container.decode(Destiny.DestinyPresentationNodeType.self, forKey: CodingKeys.presentationNodeType)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            requirements = try? container.decode(Destiny.Definitions.Presentation.DestinyPresentationNodeRequirementsBlock.self, forKey: CodingKeys.requirements)
            rootViewIcon = try? container.decode(String.self, forKey: CodingKeys.rootViewIcon)
            scope = try? container.decode(Destiny.DestinyScope.self, forKey: CodingKeys.scope)
            screenStyle = try? container.decode(Destiny.DestinyPresentationScreenStyle.self, forKey: CodingKeys.screenStyle)
            traitHashes = try? container.decode([UInt32].self, forKey: CodingKeys.traitHashes)
            traitIds = try? container.decode([String].self, forKey: CodingKeys.traitIds)
        }
    }
}
