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
            case .decode:
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

    func url(at path: String) -> URL {
        api.url(at: path)
    }
}
