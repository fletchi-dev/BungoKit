import Foundation
import PathKit
import Stencil
import StencilSwiftKit

class Templates {
    private let stencil: Stencil.Environment

    let namespace: Template
    let namespaceExtension: Template
    let request: Template
    let object: Template
    let `enum`: Template

    init(path: PathKit.Path) throws {
        stencil = stencilSwiftEnvironment(templatePaths: [path])

        namespace = try stencil.loadTemplate(name: "NamespaceEnum.stencil")
        namespaceExtension = try stencil.loadTemplate(name: "NamespaceExtensionEnum.stencil")
        request = try stencil.loadTemplate(name: "RequestModel.stencil")
        object = try stencil.loadTemplate(name: "Object.stencil")
        `enum` = try stencil.loadTemplate(name: "Enum.stencil")
    }
}
