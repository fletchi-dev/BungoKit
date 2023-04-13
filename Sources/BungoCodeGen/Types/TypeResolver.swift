import Foundation
import PathKit
import Swagger

class TypeResolver {
    static let shared = TypeResolver()

    private var components = [String: ComponentDefiniton]()
    let indeterminateType = "AnyCodable"

    private init() {}

    func load(spec: SwaggerSpec, outputPath: PathKit.Path) throws {
        components.removeAll()

        for schema in spec.components.schemas {
            switch schema.value.type {
            case .array:
                // Array types are not code generated.
                continue
            default:
                break
            }

            components[schema.name] = ComponentDefiniton(
                name: schema.name,
                schema: schema.value,
                basePath: outputPath + Path("Models"),
                in: spec
            )
        }
    }

    func definition(forSchemaNamed schema: String) -> ComponentDefiniton? {
        components[schema]
    }

    func swiftType(component: String) -> String {
        guard let mapped = components[component]?.swiftName else {
            return component
        }

        return mapped
    }

    func primitiveToSwift(type: String) -> String? {
        switch type {
        case "int8", "int16", "int32", "int64":
            return type.uppercasingFirst
        case "uint8":
            return "UInt8"
        case "uint16":
            return "UInt16"
        case "uint32":
            return "UInt32"
        case "uint64":
            return "UInt64"
        case "string":
            return "String"
        case "boolean":
            return "Bool"
        default:
            return nil
        }
    }

    func type(for response: Swagger.OperationResponse) -> String? {
        guard let name = response.response.name else {
            return nil
        }

        guard let type = primitiveToSwift(type: name) else {
            if let component = components[name] {
                return component.swiftName
            } else {
                return indeterminateType
            }
        }

        return swiftType(component: type)
    }

    func resolveSchemaType(schema: Schema) -> String {
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
                   let keyType = keyObject["type"]
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

    func mapType(type: String) -> String {
        switch type.lowercased() {
        case "string":
            return "String"
        case "integer":
            return "Int"
        default:
            fatalError("unexpected type: \(type)")
        }
    }

    func mapParameterType(component: String) -> String {
        if component.hasPrefix("Array<") && component.hasSuffix(">") {
            let start = component.index(component.startIndex, offsetBy: 6)
            let end = component.index(before: component.endIndex)

            return String(component[start ..< end]) + "..."
        }

        return component
    }
}
