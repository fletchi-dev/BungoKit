import Foundation

public protocol BungoManifestUnzipper {
    func unzip(data: Data) throws -> Data
}
