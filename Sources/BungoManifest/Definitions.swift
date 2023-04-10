import BungoModels
import Foundation

public extension ManifestDefinition {
    static var race: some ManifestDefinition { RaceDefinition() }
    static var `class`: some ManifestDefinition { ClassDefinition() }
    static var gender: some ManifestDefinition { GenderDefinition() }
    static var inventoryItem: some ManifestDefinition { InventoryItemDefinition() }
}

public struct RaceDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyRaceDefinition

    public let table: String = "DestinyRaceDefinition"
}

public struct GenderDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyGenderDefinition

    public let table: String = "DestinyGenderDefinition"
}

public struct ClassDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyClassDefinition

    public let table: String = "DestinyClassDefinition"
}

public struct InventoryItemDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyInventoryItemDefinition

    public let table: String = "DestinyInventoryItemDefinition"
}
