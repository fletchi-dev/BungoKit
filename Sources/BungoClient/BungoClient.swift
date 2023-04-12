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

    public init(baseURL: URL = URL(string: "https://bungie.net/Platform")!, configuration: BungoClientConfiguration) {
        self.baseURL = baseURL
        self.configuration = configuration

        jsonDecoder = BungoJSONDecoder()

        makeUrlSession()
    }

    public func send<R: BungoRequest>(_ request: R) async throws -> Response<R.Response> {
        let data: Data = try await withCheckedThrowingContinuation { cont in
            let urlRequest = request.makeURLRequest(baseURL: baseURL)

            urlSession.dataTask(with: urlRequest) { data, _, error in
                if let error {
                    cont.resume(throwing: BungoError.network(error))
                    return
                }

                guard let data else {
                    cont.resume(throwing: BungoError.unknown)
                    return
                }

                cont.resume(returning: data)
            }.resume()
        }

        do {
            return try jsonDecoder.decode(Response<R.Response>.self, from: data)
        } catch {
            throw BungoError.decode(error, data)
        }
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
