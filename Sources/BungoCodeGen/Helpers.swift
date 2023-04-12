import Foundation
import Swagger

enum Helpers {
    static func findPath(for component: String, in schemas: [ComponentObject<Schema>]) -> String? {
        guard let found = schemas.filter({ $0.name.split(separator: ".").map(String.init).last == component }).first else {
            return nil
        }

        return found.name.split(separator: ".").map(String.init).joined(separator: ".")
    }

    /// Rather manual... Takes a Swift type string and makes it a variadic if it's an array, changes nothing if it isn't
    static func mapParameterType(component: String) -> String {
        if component.hasPrefix("Array<") && component.hasSuffix(">") {
            let start = component.index(component.startIndex, offsetBy: 6)
            let end = component.index(before: component.endIndex)

            return String(component[start ..< end]) + "..."
        }

        return component
    }
}
