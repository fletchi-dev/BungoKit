import BungoModels
import Foundation

public final class BungoClient {
    let baseURL: URL
    let configuration: BungoClientConfiguration
    let jsonDecoder: JSONDecoder

    public private(set) var urlSession: URLSession!

    public var token: String = "" {
        didSet {
            makeUrlSession()
        }
    }

    public init(baseURL: URL = URL(string: "https://bungie.net")!, configuration: BungoClientConfiguration) {
        self.baseURL = baseURL
        self.configuration = configuration

        jsonDecoder = BungoJSONDecoder()

        makeUrlSession()
    }

    public func send<R: BungoRequest>(_ request: R) async throws -> Response<R.Response> {
        let data = try await get(request: request.makeURLRequest(baseURL: baseURL.appendingPathComponent("Platform")))

        do {
            return try jsonDecoder.decode(Response<R.Response>.self, from: data)
        } catch {
            throw BungoClientError.decode(error, data)
        }
    }

    private func get(request: URLRequest) async throws -> Data {
        try await withCheckedThrowingContinuation { cont in
            urlSession.dataTask(with: request) { data, response, error in
                if let error {
                    cont.resume(throwing: BungoClientError.network(error))
                    return
                }

                if let response = response as? HTTPURLResponse, response.statusCode == 401 {
                    cont.resume(throwing: BungoClientError.unauthorized)
                    return
                }

                guard let data else {
                    cont.resume(throwing: BungoClientError.unknown)
                    return
                }

                cont.resume(returning: data)
            }.resume()
        }
    }

    public func get(path: String) async throws -> Data {
        let urlRequest = URLRequest(url: baseURL.appendingPathComponent(path))
        return try await get(request: urlRequest)
    }

    public func url(at path: String) -> URL {
        baseURL.appendingPathComponent(path)
    }

    private func makeUrlSession() {
        let sessionConfiguration = URLSessionConfiguration.default

        sessionConfiguration.httpCookieAcceptPolicy = .always
        sessionConfiguration.httpCookieStorage = .shared
        sessionConfiguration.httpShouldSetCookies = true
        sessionConfiguration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        sessionConfiguration.httpAdditionalHeaders = [
            "Authorization": "Bearer \(token)",
            "X-API-KEY": configuration.apiKey,
            "Accept": "application/json",
        ]

        urlSession = URLSession(configuration: sessionConfiguration)
    }
}
