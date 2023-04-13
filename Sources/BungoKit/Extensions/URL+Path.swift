import Foundation

extension URL {
    var safePath: String {
        if #available(iOS 16.0, *) {
            return self.path()
        } else {
            return path
        }
    }

    func appending(_ path: String) -> URL {
        if #available(iOS 16.0, *) {
            return appending(path: path)
        } else {
            return appendingPathComponent(path)
        }
    }
}
