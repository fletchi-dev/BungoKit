import BungoModels
import Foundation

public struct RaceDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyRaceDefinition

    public let table: String = "DestinyRaceDefinition"

    public init() {}
}

public struct GenderDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyGenderDefinition

    public let table: String = "DestinyGenderDefinition"

    public init() {}
}

public struct ClassDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyClassDefinition

    public let table: String = "DestinyClassDefinition"

    public init() {}
}

public struct InventoryItemDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyInventoryItemDefinition

    public let table: String = "DestinyInventoryItemDefinition"

    public init() {}
}
