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
        var generic: String?
        var genericTParameter: String?

        if let match = dictionaryComponentResponseRegex.extractCaptureGroupAt(index: 1, from: name) {
            generic = "DictionaryComponentResponse"
            genericTParameter = match
        } else if let match = singleComponentResponseRegex.extractCaptureGroupAt(index: 1, from: name) {
            generic = "SingleComponentResponse"
            genericTParameter = match
        }

        let swiftType: String

        if let generic, let genericTParameter {
            if let genericPath = Helpers.findPath(for: genericTParameter, in: spec.components.schemas), !genericPath.isEmpty {
                swiftType = "\(generic)<\(genericPath)>"
            } else {
                swiftType = "\(generic)<\(genericTParameter)>"
            }
        } else {
            if swiftNamespace.isEmpty {
                swiftType = name
            } else {
                swiftType = "\(swiftNamespace).\(name)"
            }
        }

        return swiftType
    }
}
