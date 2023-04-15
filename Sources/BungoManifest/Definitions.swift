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

public struct DestinyPresentationNodeDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.Presentation.DestinyPresentationNodeDefinition

    public let table: String = "DestinyPresentationNodeDefinition"

    public init() {}
}

public struct DestinyRecordDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.Records.DestinyRecordDefinition

    public let table: String = "DestinyRecordDefinition"

    public init() {}
}

public struct DestinyCollectibleDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.Collectibles.DestinyCollectibleDefinition

    public let table: String = "DestinyCollectibleDefinition"

    public init() {}
}

public struct DestinyActivityDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyActivityDefinition

    public let table: String = "DestinyActivityDefinition"

    public init() {}
}

public struct DestinyDestinationDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyDestinationDefinition

    public let table: String = "DestinyDestinationDefinition"

    public init() {}
}

public struct DestinyObjectiveDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyObjectiveDefinition

    public let table: String = "DestinyObjectiveDefinition"

    public init() {}
}

public struct DestinyLocationDefinition: ManifestDefinition {
    public typealias Result = Destiny.Definitions.DestinyLocationDefinition

    public let table: String = "DestinyLocationDefinition"

    public init() {}
}
