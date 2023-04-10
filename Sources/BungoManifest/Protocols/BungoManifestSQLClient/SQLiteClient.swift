import Foundation
import SQLite

final class SQLiteClient: BungoManifestSQLClient {
    private let db: Connection

    init(at path: String) throws {
        db = try Connection(path, readonly: true)
    }

    func select(column: String, from table: String, where idColumn: String, is searchID: Int64) throws -> Data? {
        let table = Table(table)
        let id = Expression<Int64>(idColumn)
        let resultColumn = Expression<String>(column)

        let query = table.select(id, resultColumn)
            .filter(id == searchID)

        let items: AnySequence<Row>

        do {
            items = try db.prepare(query)
        } catch {
            throw BungoManifestError.sqliteSelectError(error)
        }

        for item in items {
            let rawValue: String

            do {
                rawValue = try item.get(resultColumn)
            } catch {
                throw BungoManifestError.sqliteRowError(error)
            }

            guard let data = rawValue.data(using: .utf8) else {
                continue
            }

            return data
        }

        return nil
    }
}
