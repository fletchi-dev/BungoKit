import BungoClient
import BungoModels
import Foundation

public extension BungoKit {
    func request<R: BungoRequest>(_ request: R) async throws -> R.Response {
        let response: Response<R.Response>

        do {
            response = try await api.send(request)
        } catch let error as BungoClientError {
            switch error {
            case .unauthorized:
                try await refreshToken()

                response = try await api.send(request)
            case let .decode(error, data):
                let str = String(data: data, encoding: .utf8)
                print(str)
                throw error
            default:
                throw error
            }
        } catch {
            throw error
        }

        guard let data = response.response else {
            throw BungoKitError.notFound
        }

        return data
    }
}
