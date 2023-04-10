import Foundation

extension Sequence where Element == URLQueryItem {
    subscript(safe name: String) -> String? {
        first { $0.name == name }?.value
    }
}
