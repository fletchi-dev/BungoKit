// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyTalentNode.swift

import Foundation

public extension Destiny {
    /// I see you've come to find out more about Talent Nodes. I'm so sorry. Talent Nodes are the conceptual, visual nodes that appear on Talent Grids. Talent Grids, in Destiny 1, were found on almost every instanced item: they had Nodes that could be activated to change the properties of the item. In Destiny 2, Talent Grids only exist for Builds/Subclasses, and while the basic concept is the same (Nodes can be activated once you've gained sufficient Experience on the Item, and provide effects), there are some new concepts from Destiny 1. Examine DestinyTalentGridDefinition and its subordinates for more information. This is the "Live" information for the current status of a Talent Node on a specific item. Talent Nodes have many Steps, but only one can be active at any one time: and it is the Step that determines both the visual and the game state-changing properties that the Node provides. Examine this and DestinyTalentNodeStepDefinition carefully. *IMPORTANT NOTE* Talent Nodes are, unfortunately, Content Version DEPENDENT. Though they refer to hashes for Nodes and Steps, those hashes are not guaranteed to be immutable across content versions. This is a source of great exasperation for me, but as a result anyone using Talent Grid data must ensure that the content version of their static content matches that of the server responses before showing or making decisions based on talent grid data.
    struct DestinyTalentNode: Codable {
        /// The progression level required on the Talent Grid in order to be able to activate this talent node. Talent Grids have their own Progression - similar to Character Level, but in this case it is experience related to the item itself.
        public var activationGridLevel: Int32?

        /// Whether or not the talent node is actually visible in the game's UI. Whether you want to show it in your own UI is up to you! I'm not gonna tell you who to sock it to.
        public var hidden: Bool?

        /// If true, the node is activated: it's current step then provides its benefits.
        public var isActivated: Bool?

        /// If the node has material requirements to be activated, this is the list of those requirements.
        public var materialsToUpgrade: [Destiny.Definitions.DestinyMaterialRequirement]?

        /// The hash of the Talent Node being referred to (in DestinyTalentGridDefinition.nodes). Deceptively CONTENT VERSION DEPENDENT. We have no guarantee of the hash's immutability between content versions.
        public var nodeHash: UInt32?

        /// The index of the Talent Node being referred to (an index into DestinyTalentGridDefinition.nodes[]). CONTENT VERSION DEPENDENT.
        public var nodeIndex: Int32?

        /// This property has some history. A talent grid can provide stats on both the item it's related to and the character equipping the item. This returns data about those stat bonuses.
        public var nodeStatsBlock: Destiny.DestinyTalentNodeStatBlock?

        /// If you want to show a progress bar or circle for how close this talent node is to being activate-able, this is the percentage to show. It follows the node's underlying rules about when the progress bar should first show up, and when it should be filled.
        public var progressPercent: Float?

        /// An DestinyTalentNodeState enum value indicating the node's state: whether it can be activated or swapped, and why not if neither can be performed.
        public var state: Destiny.DestinyTalentNodeState?

        /// The currently relevant Step for the node. It is this step that has rendering data for the node and the benefits that are provided if the node is activated. (the actual rules for benefits provided are extremely complicated in theory, but with how Talent Grids are being used in Destiny 2 you don't have to worry about a lot of those old Destiny 1 rules.) This is an index into: DestinyTalentGridDefinition.nodes[nodeIndex].steps[stepIndex]
        public var stepIndex: Int32?

        public enum CodingKeys: String, CodingKey {
            case activationGridLevel
            case hidden
            case isActivated
            case materialsToUpgrade
            case nodeHash
            case nodeIndex
            case nodeStatsBlock
            case progressPercent
            case state
            case stepIndex
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            activationGridLevel = try? container.decode(Int32.self, forKey: CodingKeys.activationGridLevel)
            hidden = try? container.decode(Bool.self, forKey: CodingKeys.hidden)
            isActivated = try? container.decode(Bool.self, forKey: CodingKeys.isActivated)
            materialsToUpgrade = try? container.decode([Destiny.Definitions.DestinyMaterialRequirement].self, forKey: CodingKeys.materialsToUpgrade)
            nodeHash = try? container.decode(UInt32.self, forKey: CodingKeys.nodeHash)
            nodeIndex = try? container.decode(Int32.self, forKey: CodingKeys.nodeIndex)
            nodeStatsBlock = try? container.decode(Destiny.DestinyTalentNodeStatBlock.self, forKey: CodingKeys.nodeStatsBlock)
            progressPercent = try? container.decode(Float.self, forKey: CodingKeys.progressPercent)
            state = try? container.decode(Destiny.DestinyTalentNodeState.self, forKey: CodingKeys.state)
            stepIndex = try? container.decode(Int32.self, forKey: CodingKeys.stepIndex)
        }
    }
}
