// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyRecordDefinition.swift

import Foundation

public extension Destiny.Definitions.Records {
    struct DestinyRecordDefinition: Codable {
        public var completionInfo: Destiny.Definitions.Records.DestinyRecordCompletionBlock?

        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        public var expirationInfo: Destiny.Definitions.Records.DestinyRecordExpirationBlock?

        public var forTitleGilding: Bool?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// Some records have multiple 'interval' objectives, and the record may be claimed at each completed interval
        public var intervalInfo: Destiny.Definitions.Records.DestinyRecordIntervalBlock?

        public var loreHash: UInt32?

        public var objectiveHashes: [UInt32]?

        /// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
        public var parentNodeHashes: [UInt32]?

        public var presentationInfo: Destiny.Definitions.Presentation.DestinyPresentationChildBlock?

        public var presentationNodeType: Destiny.DestinyPresentationNodeType?

        public var recordValueStyle: Destiny.DestinyRecordValueStyle?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public var requirements: Destiny.Definitions.Presentation.DestinyPresentationNodeRequirementsBlock?

        /// If there is any publicly available information about rewards earned for achieving this record, this is the list of those items.
        ///  However, note that some records intentionally have "hidden" rewards. These will not be returned in this list.
        public var rewardItems: [Destiny.DestinyItemQuantity]?

        /// Indicates whether this Record's state is determined on a per-character or on an account-wide basis.
        public var scope: Destiny.DestinyScope?

        /// A hint to show a large icon for a reward
        public var shouldShowLargeIcons: Bool?

        public var stateInfo: Destiny.Definitions.Records.SchemaRecordStateBlock?

        public var titleInfo: Destiny.Definitions.Records.DestinyRecordTitleBlock?

        public var traitHashes: [UInt32]?

        public var traitIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case completionInfo
            case displayProperties
            case expirationInfo
            case forTitleGilding
            case hash
            case index
            case intervalInfo
            case loreHash
            case objectiveHashes
            case parentNodeHashes
            case presentationInfo
            case presentationNodeType
            case recordValueStyle
            case redacted
            case requirements
            case rewardItems
            case scope
            case shouldShowLargeIcons
            case stateInfo
            case titleInfo
            case traitHashes
            case traitIds
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            completionInfo = try? container.decode(Destiny.Definitions.Records.DestinyRecordCompletionBlock.self, forKey: CodingKeys.completionInfo)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            expirationInfo = try? container.decode(Destiny.Definitions.Records.DestinyRecordExpirationBlock.self, forKey: CodingKeys.expirationInfo)
            forTitleGilding = try? container.decode(Bool.self, forKey: CodingKeys.forTitleGilding)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            intervalInfo = try? container.decode(Destiny.Definitions.Records.DestinyRecordIntervalBlock.self, forKey: CodingKeys.intervalInfo)
            loreHash = try? container.decode(UInt32.self, forKey: CodingKeys.loreHash)
            objectiveHashes = try? container.decode([UInt32].self, forKey: CodingKeys.objectiveHashes)
            parentNodeHashes = try? container.decode([UInt32].self, forKey: CodingKeys.parentNodeHashes)
            presentationInfo = try? container.decode(Destiny.Definitions.Presentation.DestinyPresentationChildBlock.self, forKey: CodingKeys.presentationInfo)
            presentationNodeType = try? container.decode(Destiny.DestinyPresentationNodeType.self, forKey: CodingKeys.presentationNodeType)
            recordValueStyle = try? container.decode(Destiny.DestinyRecordValueStyle.self, forKey: CodingKeys.recordValueStyle)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
            requirements = try? container.decode(Destiny.Definitions.Presentation.DestinyPresentationNodeRequirementsBlock.self, forKey: CodingKeys.requirements)
            rewardItems = try? container.decode([Destiny.DestinyItemQuantity].self, forKey: CodingKeys.rewardItems)
            scope = try? container.decode(Destiny.DestinyScope.self, forKey: CodingKeys.scope)
            shouldShowLargeIcons = try? container.decode(Bool.self, forKey: CodingKeys.shouldShowLargeIcons)
            stateInfo = try? container.decode(Destiny.Definitions.Records.SchemaRecordStateBlock.self, forKey: CodingKeys.stateInfo)
            titleInfo = try? container.decode(Destiny.Definitions.Records.DestinyRecordTitleBlock.self, forKey: CodingKeys.titleInfo)
            traitHashes = try? container.decode([UInt32].self, forKey: CodingKeys.traitHashes)
            traitIds = try? container.decode([String].self, forKey: CodingKeys.traitIds)
        }
    }
}
