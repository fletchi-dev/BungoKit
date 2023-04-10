import Foundation

extension Int64 {
    func toManifestID() -> Int64 {
        var hashId = self

        if (hashId & (1 << (32 - 1))) != 0 {
            hashId = hashId - (1 << 32)
        }

        return hashId
    }
}
