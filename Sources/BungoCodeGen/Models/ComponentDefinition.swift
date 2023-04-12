import Foundation
import PathKit
import Swagger

struct ComponentDefiniton: SwiftRepresentable {
    let schema: Schema
    let spec: SwaggerSpec
    private let path: [String]
    private let basePath: PathKit.Path

    init(name: String, schema: Schema, basePath: PathKit.Path, in spec: SwaggerSpec) {
        self.schema = schema
        self.spec = spec
        let path = name.split(separator: ".").map { String($0) }

        if path.count == 1 {
            self.path = ["Core"] + path
        } else {
            self.path = path
        }

        self.basePath = basePath
    }

    var filename: String { name + ".swift" }
    var name: String { path[path.count - 1] }
    var namespace: String { path[0 ..< path.count - 1].joined(separator: ".") }
    var filePath: PathKit.Path { basePath + path[0 ..< path.count - 1].map { Path($0) }.reduce(Path(), +) + filename }
}
