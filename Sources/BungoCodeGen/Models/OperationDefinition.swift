import Foundation
import PathKit
import Swagger

struct OperationDefinition: SwiftRepresentable {
    let operation: Swagger.Operation
    let spec: SwaggerSpec
    private let path: [String]
    private let basePath: PathKit.Path

    init(operation: Swagger.Operation, basePath: PathKit.Path, in spec: SwaggerSpec) {
        self.operation = operation
        self.spec = spec
        let path = operation.generatedIdentifier.split(separator: ".").map { String($0) }

        self.path = ["Requests"] + path
        self.basePath = basePath
    }

    var filename: String { name + ".swift" }
    var name: String { path[path.count - 1] }
    var namespace: String { path[0 ..< path.count - 1].joined(separator: ".") }
    var filePath: PathKit.Path { basePath + path[0 ..< path.count - 1].map { Path($0) }.reduce(Path(), +) + filename }
}
