import Foundation
import Swagger

extension Swagger.Operation {
    var bestResponse: Swagger.OperationResponse? {
        responses.first { $0.statusCode == 200 } ??
            responses.first(where: {
                guard let statusCode = $0.statusCode else {
                    return false
                }

                return statusCode >= 200 && statusCode < 300
            }) ??
            responses.first
    }
}
