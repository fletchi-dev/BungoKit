// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinySandboxPerkDefinition.swift

import Foundation

public extension Destiny.Definitions {
    /// Perks are modifiers to a character or item that can be applied situationally.
    /// - Perks determine a weapons' damage type.
    /// - Perks put the Mods in Modifiers (they are literally the entity that bestows the Sandbox benefit for whatever fluff text about the modifier in the Socket, Plug or Talent Node)
    /// - Perks are applied for unique alterations of state in Objectives
    /// Anyways, I'm sure you can see why perks are so interesting.
    /// What Perks often don't have is human readable information, so we attempt to reverse engineer that by pulling that data from places that uniquely refer to these perks: namely, Talent Nodes and Plugs. That only gives us a subset of perks that are human readable, but those perks are the ones people generally care about anyways. The others are left as a mystery, their true purpose mostly unknown and undocumented.
    struct DestinySandboxPerkDefinition: Codable {
        /// If this perk grants a damage type to a weapon, the damage type will be defined here.
        /// Unless you have a compelling reason to use this enum value, use the damageTypeHash instead to look up the actual DestinyDamageTypeDefinition.
        public var damageType: Destiny.DamageType?

        /// The hash identifier for looking up the DestinyDamageTypeDefinition, if this perk has a damage type.
        /// This is preferred over using the damageType enumeration value, which has been left purely because it is occasionally convenient.
        public var damageTypeHash: UInt32?

        /// These display properties are by no means guaranteed to be populated. Usually when it is, it's only because we back-filled them with the displayProperties of some Talent Node or Plug item that happened to be uniquely providing that perk.
        public var displayProperties: Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition?

        /// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
        /// When entities refer to each other in Destiny content, it is this hash that they are referring to.
        public var hash: UInt32?

        /// The index of the entity as it was found in the investment tables.
        public var index: Int32?

        /// If true, you can actually show the perk in the UI. Otherwise, it doesn't have useful player-facing information.
        public var isDisplayable: Bool?

        /// An old holdover from the original Armory, this was an attempt to group perks by functionality.
        /// It is as yet unpopulated, and there will be quite a bit of work needed to restore it to its former working order.
        public var perkGroups: Destiny.Definitions.DestinyTalentNodeStepGroups?

        /// The string identifier for the perk.
        public var perkIdentifier: String?

        /// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
        public var redacted: Bool?

        public enum CodingKeys: String, CodingKey {
            case damageType
            case damageTypeHash
            case displayProperties
            case hash
            case index
            case isDisplayable
            case perkGroups
            case perkIdentifier
            case redacted
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            damageType = try? container.decode(Destiny.DamageType.self, forKey: CodingKeys.damageType)
            damageTypeHash = try? container.decode(UInt32.self, forKey: CodingKeys.damageTypeHash)
            displayProperties = try? container.decode(Destiny.Definitions.Common.DestinyDisplayPropertiesDefinition.self, forKey: CodingKeys.displayProperties)
            hash = try? container.decode(UInt32.self, forKey: CodingKeys.hash)
            index = try? container.decode(Int32.self, forKey: CodingKeys.index)
            isDisplayable = try? container.decode(Bool.self, forKey: CodingKeys.isDisplayable)
            perkGroups = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepGroups.self, forKey: CodingKeys.perkGroups)
            perkIdentifier = try? container.decode(String.self, forKey: CodingKeys.perkIdentifier)
            redacted = try? container.decode(Bool.self, forKey: CodingKeys.redacted)
        }
    }
}
