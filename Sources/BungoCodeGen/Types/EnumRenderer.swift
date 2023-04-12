import Foundation
import SwiftFormat

struct EnumRenderer {
    let definition: ComponentDefiniton
    let templates: Templates

    func render() throws {
        guard let values = definition.schema.metadata.json["x-enum-values"] as? [[String: Any]] else {
            return
        }

        let swiftType: String

        switch definition.schema.type {
        case let .integer(interger):
            switch interger.format {
            case .int8:
                swiftType = "Int8"
            case .int16:
                swiftType = "Int16"
            case .int32:
                swiftType = "Int32"
            case .int64:
                swiftType = "UInt64"
            case .uint8:
                swiftType = "UInt8"
            case .uint16:
                swiftType = "UInt16"
            case .uint32:
                swiftType = "UInt32"
            case .uint64:
                swiftType = "UInt64"
            default:
                swiftType = "UInt32"
            }
        default:
            swiftType = "UInt32"
        }

        var cases: [[String: Any]] = []

        for dict in values {
            guard
                let identifier = dict["identifier"] as? String,
                let value = dict["numericValue"] as? String
            else {
                return
            }

            let documentation = (dict["description"] as? String ?? "")
                .replacingOccurrences(of: "\r", with: "")
                .split(separator: "\n").map { String($0) }

            cases.append([
                "name": identifier.swiftIdentifier,
                "value": swiftType == "String" ? "\"\(value)\"" : value,
                "documentation": documentation,
            ])
        }

        let documentation = (definition.schema.metadata.description ?? "")
            .replacingOccurrences(of: "\r", with: "")
            .split(separator: "\n").map { String($0) }

        var context: [String: Any] = [
            "filename": definition.filename,
            "typeName": definition.name,
            "rawTypeName": "\(swiftType), Codable",
            "cases": cases,
            "documentation": documentation,
        ]

        if definition.namespace != "Core" {
            context["extensionOf"] = definition.namespace
        }

        let rawFileContent = try templates.enum.render(context)

        try SwiftFileSaver.shared.saveSwiftFile(contents: rawFileContent, to: definition.filePath)
    }
}
