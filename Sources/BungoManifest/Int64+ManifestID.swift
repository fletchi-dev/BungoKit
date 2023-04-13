import Foundation

extension UInt32 {
    func toManifestID() -> Int32 {
        Int32(bitPattern: self)
    }
}
