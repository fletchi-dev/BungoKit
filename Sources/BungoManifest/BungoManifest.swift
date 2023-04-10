import BungoModels
import Foundation

public final class BungoManifest {
    private let jsonDecoder: JSONDecoder
    private let sqlClient: BungoManifestSQLClient

    public init(
        at path: String,
        jsonDecoder: JSONDecoder = BungoJSONDecoder(),
        sqlClient: BungoManifestSQLClient? = nil
    ) throws {
        if let sqlClient {
            self.sqlClient = sqlClient
        } else {
            self.sqlClient = try SQLiteClient(at: path)
        }

        self.jsonDecoder = jsonDecoder
    }

    public convenience init(
        remote url: URL,
        localURL: URL,
        jsonDecoder: JSONDecoder = .init(),
        sqlClient: BungoManifestSQLClient? = nil,
        unzipper: BungoManifestUnzipper? = nil
    ) async throws {
        let urlRequest = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let unzipper = unzipper ?? ZIPFoundationUnzipper()
        let unzipped = try unzipper.unzip(data: data)

        try self.init(manifest: unzipped, localURL: localURL, jsonDecoder: jsonDecoder, sqlClient: sqlClient)
    }

    public convenience init(
        manifest: Data,
        localURL: URL,
        jsonDecoder: JSONDecoder = .init(),
        sqlClient: BungoManifestSQLClient? = nil
    ) throws {
        try manifest.write(to: localURL)

        try self.init(at: localURL.path, jsonDecoder: jsonDecoder, sqlClient: sqlClient)
    }

    public func get<Def: ManifestDefinition>(hash: Int64, for definition: Def) throws -> Def.Result? {
        guard let data = try sqlClient.select(
            column: definition.jsonColumn,
            from: definition.table,
            where: definition.idColumn,
            is: hash.toManifestID()
        ) else {
            return nil
        }

        do {
            return try jsonDecoder.decode(Def.Result.self, from: data)
        } catch {
            throw BungoManifestError.decoderError(error, data)
        }
    }
}
