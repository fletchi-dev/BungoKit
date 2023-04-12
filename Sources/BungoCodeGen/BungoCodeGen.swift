import Foundation
import PathKit
import Swagger

final class BungoCodeGen {
    static let indeterminateType = "AnyCodable"

    let config: BungoCodeGenConfiguration

    init(config: BungoCodeGenConfiguration) {
        self.config = config
    }

    func start() async throws {
        print("loading \(config.openapiFilePath)")
        let spec = try SwaggerSpec(path: config.openapiFilePath)

        print("initializing templates")
        let templates = try Templates(path: config.templatesPath)

        print("preparing output: \(config.outputPath)")
        try prepareOutputPath()

        print("generating static files")
        try generateStaticFiles()

        print("preparing type resolver")
        try TypeResolver.shared.load(spec: spec, outputPath: config.outputPath)

        print("preparing directory tree")
        let root = makeNamespaces(spec: spec)

        print("creating directories")
        try makeDirectories(node: root, output: config.modelsOutputPath)

        print("generating namespaces")
        try NamespaceRenderer(node: root, basePath: config.outputPath, templates: templates).render()

        print("generating requests")
        for op in spec.operations where op.identifier != nil {
            guard let response = op.bestResponse else {
                return
            }

            guard let _ = TypeResolver.shared.type(for: response) else {
                return
            }

            let definition = OperationDefinition(operation: op, basePath: config.modelsOutputPath, in: spec)

            try OperationRenderer(definition: definition, templates: templates).render()
        }

        print("generating components")
        for schema in spec.components.schemas {
            guard
                let definition = TypeResolver.shared.definition(forSchemaNamed: schema.name),
                shouldProcess(definition: definition)
            else {
                continue
            }

            if definition.schema.metadata.isEnum {
                try EnumRenderer(definition: definition, templates: templates).render()
            } else if definition.schema.metadata.isObject {
                try ObjectRenderer(definition: definition, templates: templates).render()
            }
        }
    }

    private func shouldProcess(definition: ComponentDefiniton) -> Bool {
        if let _ = dictionaryComponentResponseRegex.extractCaptureGroupAt(index: 1, from: definition.name) {
            return false
        }

        if let _ = singleComponentResponseRegex.extractCaptureGroupAt(index: 1, from: definition.name) {
            return false
        }

        return true
    }

    private func prepareOutputPath() throws {
        if config.outputPath.exists {
            try config.outputPath.delete()
        }

        try config.modelsOutputPath.mkpath()
    }

    private func generateStaticFiles() throws {
        for child in try config.sourcesPath.children() where !child.lastComponent.hasPrefix(".") {
            print("copying \(child.lastComponent)")
            try child.copy(config.outputPath + child.lastComponent)
        }
    }

    private func makeDirectories(node: Node<String>, output: PathKit.Path) throws {
        try node.traverse { node in
            var path = node.path.map(\.value)
            path.removeFirst()

            if path.isEmpty {
                return
            }

            let directoryPath = path.map { Path($0) }.reduce(Path(), +)

            try (output + directoryPath).mkpath()
        }
    }

    private func makeNamespaces(spec: SwaggerSpec) -> Node<String> {
        let root = Node<String>(value: "")

        for schema in spec.components.schemas {
            var path = schema.name.split(separator: ".").map { String($0) }
            path.removeLast()

            guard !path.isEmpty else {
                continue
            }

            var node = root

            for element in path {
                node = node.child(withValue: element)
            }
        }

        for op in spec.operations {
            var path = op.generatedIdentifier.split(separator: ".").map(String.init)
            path.removeLast()

            path = ["Requests"] + path

            guard !path.isEmpty else {
                continue
            }

            var node = root

            for element in path {
                node = node.child(withValue: element)
            }
        }

        root.add(child: .init(value: "Core"))

        return root
    }
}
