import Foundation

extension URL {
    var safePath: String {
        if #available(iOS 16.0, *) {
            return self.path()
        } else {
            return path
        }
    }
}
