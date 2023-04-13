import Foundation
import Swagger

protocol SwiftRepresentable {
    var spec: SwaggerSpec { get }

    var name: String { get }
    var namespace: String { get }

    var swiftNamespace: String { get }
    var swiftName: String { get }
}

extension SwiftRepresentable {
    var swiftNamespace: String { namespace == "Core" ? "" : namespace }

    var swiftName: String {
        if let valueType = dictionaryComponentResponseRegex.extractCaptureGroupAt(index: 2, from: name),
           let rawKeytype = dictionaryComponentResponseRegex.extractCaptureGroupAt(index: 1, from: name),
           let keyType = TypeResolver.shared.primitiveToSwift(type: rawKeytype)
        {
            let type = "DictionaryComponentResponse"

            if let path = Helpers.findPath(for: valueType, in: spec.components.schemas) {
                return "\(type)<\(keyType), \(path)>"
            } else {
                return "\(type)<\(keyType), \(valueType)>"
            }

        } else if let match = singleComponentResponseRegex.extractCaptureGroupAt(index: 1, from: name) {
            let type = "SingleComponentResponse"

            if let path = Helpers.findPath(for: match, in: spec.components.schemas) {
                return "\(type)<\(path)>"
            } else {
                return "\(type)<\(match)>"
            }
        }

        if swiftNamespace.isEmpty {
            return name
        } else {
            return "\(swiftNamespace).\(name)"
        }
    }
}
