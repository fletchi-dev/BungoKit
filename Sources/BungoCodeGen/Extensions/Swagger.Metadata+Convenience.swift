import Foundation
import Swagger

extension Swagger.Metadata {
    var isEnum: Bool {
        !(enumValues ?? []).isEmpty
    }

    var isObject: Bool {
        type == .object
    }
}
