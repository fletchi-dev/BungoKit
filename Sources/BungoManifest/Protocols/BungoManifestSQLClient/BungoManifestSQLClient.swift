import Foundation

public protocol BungoManifestSQLClient {
    init(at path: String) throws

    func select(column: String, from table: String, where idColumn: String, is id: Int64) throws -> Data?
}
