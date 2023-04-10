import Foundation
import ZIPFoundation

final class ZIPFoundationUnzipper: BungoManifestUnzipper {
    func unzip(data: Data) throws -> Data {
        guard
            let archive = Archive(data: data, accessMode: .read, preferredEncoding: .utf8),
            let entry = archive.makeIterator().first(where: { _ in true })
        else {
            throw BungoManifestError.couldNotOpenArchive
        }

        var manifestData = Data()

        _ = try archive.extract(entry, skipCRC32: true, progress: nil) { data in
            manifestData += data
        }

        return manifestData
    }
}
