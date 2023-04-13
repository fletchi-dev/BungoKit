import Foundation

public enum BungoKitError: Error {
    case manifest(Error)
    case notFound
}
