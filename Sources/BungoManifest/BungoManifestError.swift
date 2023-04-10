import Foundation

public enum BungoManifestError: Swift.Error {
    case couldNotOpenArchive
    case unknown
    case decoderError(Swift.Error, Data)
    case sqliteRowError(Swift.Error)
    case sqliteSelectError(Swift.Error)
}
