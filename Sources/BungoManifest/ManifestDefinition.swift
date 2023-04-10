import AnyCodable
import Foundation

public protocol ManifestDefinition {
    associatedtype Result: Decodable

    var table: String { get }
    var optionalIdColumn: String? { get }
    var optionalJsonColumn: String? { get }
}

public extension ManifestDefinition {
    typealias Result = [String: AnyDecodable]

    var optionalIdColumn: String? { nil }
    var optionalJsonColumn: String? { nil }

    var idColumn: String { optionalIdColumn ?? "id" }
    var jsonColumn: String { optionalJsonColumn ?? "json" }
}
