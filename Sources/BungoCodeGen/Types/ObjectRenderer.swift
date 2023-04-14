import Foundation
import Swagger

struct ObjectRenderer {
    let definition: ComponentDefiniton
    let templates: Templates

    func render() throws {
        let object: ObjectSchema

        switch definition.schema.type {
        case let .object(objectSchema):
            object = objectSchema
        default:
            return
        }

        var properties: [[String: Any]] = []
        var imports = Set<String>()

        for property in object.properties {
            var type = resolveSchemaType(schema: property.schema)
            type = TypeResolver.shared.swiftType(component: type)

            let description = (property.schema.metadata.description ?? "")
            let documentation = description
                .replacingOccurrences(of: "\r", with: "")
                .split(separator: "\n")

            properties.append([
                "name": property.name.swiftIdentifier,
                "apiName": property.name,
                "type": type,
                "documentation": documentation,
                "hasDefault": false,
            ])

            if type.contains("AnyCodable") {
                imports.insert("AnyCodable")
            }
        }

        let documentation = (definition.schema.metadata.description ?? "")
            .replacingOccurrences(of: "\r", with: "")
            .split(separator: "\n").map { String($0) }

        var context: [String: Any] = [
            "filename": definition.filename,
            "name": definition.name,
            "properties": properties,
            "imports": Array(imports),
            "documentation": documentation,
        ]

        if definition.namespace != "Core" {
            context["extensionOf"] = definition.namespace
        }

        let rawFileContent = try templates.object.render(context)
        try SwiftFileSaver.shared.saveSwiftFile(contents: rawFileContent, to: definition.filePath)
    }

    private func resolveSchemaType(schema: Schema) -> String {
        switch schema.type {
        case .boolean:
            return "Bool"
        case let .number(number):
            switch number.format {
            case .double, .decimal:
                return "Double"
            case .float:
                return "Float"
            default:
                return "Double"
            }
        case let .integer(integer):
            if let reference = schema.metadata.json["x-enum-reference"] as? [AnyHashable: String],
               let ref = reference["$ref"]?.split(separator: "/").last
            {
                return String(ref)
            }

            switch integer.format {
            case .int8:
                return "Int8"
            case .int16:
                return "Int16"
            case .int32:
                return "Int32"
            case .int64:
                return "Int64"
            case .uint8:
                return "UInt8"
            case .uint16:
                return "UInt16"
            case .uint32:
                return "UInt32"
            case .uint64:
                return "UInt64"
            default:
                return "Int"
            }
        case let .string(string):
            guard case let .format(format) = string.format else {
                return "String"
            }

            switch format {
            case .date, .dateTime:
                return "Date"
            case .binary:
                return "Data"
            case .byte:
                return "UInt8"
            default:
                return "String"
            }
        case let .reference(ref):
            return ref.name
        case let .array(array):
            switch array.items {
            case let .single(schema):
                return "Array<\(resolveSchemaType(schema: schema))>"
            default:
                return "AnyCodable"
            }
        case let .object(object):
            guard let additionalProperties = object.additionalProperties else {
                return "AnyCodable"
            }

            if let keyObject = schema.metadata.json["x-dictionary-key"] {
                if let keyObject = keyObject as? [AnyHashable: Any],
                   let keyType = (keyObject["format"] as? String) ?? keyObject["type"]
                {
                    let additionalName = resolveSchemaType(schema: additionalProperties)

                    if let keyType = keyType as? String {
                        return "Dictionary<\(mapType(type: keyType)),\(additionalName)>"
                    }
                } else {
                    return "AnyCodable"
                }
            } else {
                return "AnyCodable"
            }

            return resolveSchemaType(schema: additionalProperties)
        case let .group(group):
            if let first = group.schemas.first {
                return resolveSchemaType(schema: first)
            } else {
                return "AnyCodable"
            }
        default:
            return "AnyCodable"
        }
    }

    private func mapType(type: String) -> String {
        switch type.lowercased() {
        case "string":
			return "String"
		case "uint8":
			return "UInt8"
		case "uint16":
			return "UInt16"
		case "uint32":
			return "UInt32"
		case "uint64":
			return "UInt64"
		case "int8":
			return "Int8"
		case "int16":
			return "Int16"
		case "int32":
			return "Int32"
		case "int64":
			return "Int64"
        default:
            fatalError("unexpected type: \(type)")
        }
    }
}
