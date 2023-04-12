import Foundation

private let protectedIdentifiers = [
    "if", "else",
    "true", "false",
    "private", "internal",
    "while", "for",
    "do", "try",
    "public", "fileprivate", "open", "final",
    "set", "get",
    "default", "break", "case",
]

extension String {
    var lowercasingFirst: String { prefix(1).lowercased() + dropFirst() }
    var uppercasingFirst: String { prefix(1).uppercased() + dropFirst() }

    var camelCased: String {
        guard !isEmpty else { return "" }
        let parts = components(separatedBy: .alphanumerics.inverted)
        let first = parts.first!.lowercasingFirst
        let rest = parts.dropFirst().map { $0.uppercasingFirst }

        return ([first] + rest).joined()
    }

    var swiftIdentifier: String {
        let identifier = camelCased

        if protectedIdentifiers.contains(identifier) {
            return "`\(identifier)`"
        } else {
            return identifier
        }
    }
}
