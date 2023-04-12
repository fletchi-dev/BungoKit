// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyTalentNodeStepGroups.swift

import Foundation

public extension Destiny.Definitions {
    /// These properties are an attempt to categorize talent node steps by certain common properties. See the related enumerations for the type of properties being categorized.
    struct DestinyTalentNodeStepGroups: Codable {
        public var damageTypes: Destiny.Definitions.DestinyTalentNodeStepDamageTypes?

        public var guardianAttributes: Destiny.Definitions.DestinyTalentNodeStepGuardianAttributes?

        public var impactEffects: Destiny.Definitions.DestinyTalentNodeStepImpactEffects?

        public var lightAbilities: Destiny.Definitions.DestinyTalentNodeStepLightAbilities?

        public var weaponPerformance: Destiny.Definitions.DestinyTalentNodeStepWeaponPerformances?

        public enum CodingKeys: String, CodingKey {
            case damageTypes
            case guardianAttributes
            case impactEffects
            case lightAbilities
            case weaponPerformance
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            damageTypes = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepDamageTypes.self, forKey: CodingKeys.damageTypes)
            guardianAttributes = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepGuardianAttributes.self, forKey: CodingKeys.guardianAttributes)
            impactEffects = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepImpactEffects.self, forKey: CodingKeys.impactEffects)
            lightAbilities = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepLightAbilities.self, forKey: CodingKeys.lightAbilities)
            weaponPerformance = try? container.decode(Destiny.Definitions.DestinyTalentNodeStepWeaponPerformances.self, forKey: CodingKeys.weaponPerformance)
        }
    }
}
