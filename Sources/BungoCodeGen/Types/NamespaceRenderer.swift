import Foundation
import PathKit
import Stencil

struct NamespaceRenderer {
    let node: Node<String>
    let basePath: PathKit.Path
    let templates: Templates

    func render() throws {
        var uniqueNamespaces = Set<[String]>()

        node.traverse { n in
            let namespace = Array(n.path.map(\.value).dropFirst())

            guard !namespace.isEmpty else { return }
            uniqueNamespaces.insert(namespace)
        }

        var lines = [String]()

        for namespace in uniqueNamespaces where namespace.last != "Core" {
            let extends = namespace[0 ..< namespace.count - 1].joined(separator: ".")
            let name = namespace[namespace.count - 1]
            let filename: String
            let template: Template

            if !extends.isEmpty {
                template = templates.namespaceExtension
                filename = "\(extends).\(name).swift"
            } else {
                template = templates.namespace
                filename = "\(name).swift"
            }

            let context: [String: Any] = [
                "filename": filename,
                "name": name,
                "namespace": extends,
            ]

            let rendered = try template.render(context)

            lines.append(rendered)
        }

        lines.sort()

        try SwiftFileSaver.shared.saveSwiftFile(
            contents: lines.joined(separator: "\n"),
            to: basePath + "Namespaces.swift"
        )
    }
}
