import Foundation
import PathKit
import Swagger

private enum ParameterValueKind {
    case `enum`
    case primitive
    case arrayOfEnum
    case arrayOfPrimitive
    case arrayOfString

    init(name: String) {
        if OperationRenderer.primitives.contains(name) {
            self = .primitive
            return
        }

        if name.hasSuffix("...") {
            let baseType = String(name[..<name.index(name.endIndex, offsetBy: -3)])

            if baseType == "String" {
                self = .arrayOfString
            } else if OperationRenderer.primitives.contains(baseType) {
                self = .arrayOfPrimitive
            } else {
                self = .arrayOfEnum
            }

            return
        }

        self = .enum
    }
}

struct OperationRenderer {
    static let numericTypes = ["Int8", "Int16", "Int32", "Int64", "UInt8", "UInt16", "UInt32", "UInt64"]
    static let primitives = ["Bool", "String"] + numericTypes

    let definition: OperationDefinition
    let templates: Templates

    func render() throws {
        guard let response = definition.operation.bestResponse else {
            return
        }

        guard let responseType = TypeResolver.shared.type(for: response) else {
            return
        }

        var imports = [String]()

        if responseType == TypeResolver.shared.indeterminateType {
            imports.append(TypeResolver.shared.indeterminateType)
        }

        var queryParameters = [[String: Any]]()
        var pathParameters = [[String: Any]]()

        for param in definition.operation.parameters {
            var type = ""

            switch param.value.type {
            case let .schema(paramSchema):
                type = TypeResolver.shared.resolveSchemaType(schema: paramSchema.schema)
            default:
                continue
            }

            type = TypeResolver.shared.swiftType(component: type)
            type = TypeResolver.shared.mapParameterType(component: type)

            let valueKind = ParameterValueKind(name: type)
            var isOptional = false

            if type == "Date" {
                continue
            }

            if !param.value.required, !type.hasSuffix("...") {
                type = "\(type)? = nil"
                isOptional = true
            }

            let value: String

            switch valueKind {
            case .enum:
                value = "\(param.value.name).rawValue"
            case .primitive:
                value = param.value.name
            case .arrayOfEnum:
                value = "\(param.value.name).map({ \"\\($0.rawValue)\" }).joined(separator: \",\")"
            case .arrayOfPrimitive:
                value = "\(param.value.name).map({ \"\\($0)\" }).joined(separator: \",\")"
            case .arrayOfString:
                value = "\(param.value.name).joined(separator: \",\")"
            }

            switch param.value.location {
            case .path:
                pathParameters.append([
                    "name": param.value.name,
                    "type": type,
                    "value": value,
                    "isOptional": isOptional,
                ])
            case .query:
                queryParameters.append([
                    "name": param.value.name,
                    "type": type,
                    "value": value,
                    "isOptional": isOptional,
                ])
            default:
                continue
            }
        }

        var paramStrings = [String]()

        for parameter in pathParameters {
            paramStrings.append("\(parameter["name"]!): \(parameter["type"]!)")
        }

        for parameter in queryParameters {
            paramStrings.append("\(parameter["name"]!): \(parameter["type"]!)")
        }

        let paramString = paramStrings.joined(separator: ",")

        let documentation = (definition.operation.description ?? "")
            .replacingOccurrences(of: "\r", with: "")
            .split(separator: "\n").map { String($0) }

        var context: [String: Any] = [
            "filename": definition.filename,
            "name": definition.name,
            "imports": imports,
            "documentation": documentation,
            "paramString": paramString,
            "responseType": responseType,
            "queryParameters": queryParameters,
            "pathParameters": pathParameters,
            "method": ".\(definition.operation.method.rawValue.lowercased())",
            "path": definition.operation.path,
            "successStatus": response.statusCode ?? 200,
        ]

        if definition.namespace != "Core" {
            context["extensionOf"] = definition.namespace
        }

        let rawFileContent = try templates.request.render(context)
        try SwiftFileSaver.shared.saveSwiftFile(contents: rawFileContent, to: definition.filePath)
    }
}
