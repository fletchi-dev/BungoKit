import Foundation

public final class BungoAuth: NSObject {
    public let clientID: Int
    public let clientSecret: String
    public let callbackScheme: String
    public let urlSession: URLSession
    public let authHandler: BungoOAuthHandler

    private var state: String?

    public init(clientID: Int, clientSecret: String, callbackScheme: String, urlSession: URLSession, authHandler: BungoOAuthHandler) {
        self.clientID = clientID
        self.clientSecret = clientSecret
        self.callbackScheme = callbackScheme
        self.urlSession = urlSession
        self.authHandler = authHandler
    }

    public func refreshToken(_ token: String, completion: @escaping ((Result<BungoTokenResponse, Error>) -> Void)) {
        let request = RefreshTokenURLRequestBuilder(refreshToken: token, clientID: clientID, clientSecret: clientSecret).urlRequest

        urlSession.dataTask(with: request) { [weak self] data, _, error in
            if let data {
                self?.handleTokenResponse(data: data, completion: completion)
            } else if let error {
                completion(.failure(error))
            } else {
                completion(.failure(BungoAuthError.unknown))
            }
        }.resume()
    }

    public func refreshToken(_ token: String) async throws -> BungoTokenResponse {
        try await withCheckedThrowingContinuation { cont in
            refreshToken(token, completion: cont.resume(with:))
        }
    }

    public func beginSignIn(completion: @escaping ((Result<BungoTokenResponse, Error>) -> Void)) {
        let builder = AuthURLBuilder(clientID: clientID)
        state = builder.state

        Task { @MainActor in
            authHandler.start(with: builder.url, completion: { [weak self] result in
                switch result {
                case let .failure(error):
                    completion(.failure(error))
                case let .success(url):
                    self?.fetchToken(from: url, completion: completion)
                }
            })
        }
    }

    public func signIn() async throws -> BungoTokenResponse {
        try await withCheckedThrowingContinuation { cont in
            beginSignIn(completion: cont.resume(with:))
        }
    }

    private func getTokenCode(url: URL) -> Result<String, Error> {
        guard let localState = state else {
            return .failure(BungoAuthError.internal)
        }

        guard
            let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
            let queryItems = components.queryItems,
            let remoteState = queryItems[safe: "state"],
            let code = queryItems[safe: "code"],
            remoteState == localState
        else {
            return .failure(BungoAuthError.invalidResponse)
        }

        return .success(code)
    }

    private func getToken(code: String, completion: @escaping ((Result<BungoTokenResponse, Error>) -> Void)) {
        let request = TokenURLRequestBuilder(authCode: code, clientID: clientID, clientSecret: clientSecret).urlRequest

        urlSession.dataTask(with: request) { [weak self] data, _, error in
            if let data {
                self?.handleTokenResponse(data: data, completion: completion)
            } else if let error {
                completion(.failure(error))
            } else {
                completion(.failure(BungoAuthError.unknown))
            }
        }.resume()
    }

    private func handleTokenResponse(data: Data, completion: (Result<BungoTokenResponse, Error>) -> Void) {
        let decoder = JSONDecoder()

        do {
            let tokenResponse = try decoder.decode(BungoTokenResponse.self, from: data)

            completion(.success(tokenResponse))
        } catch {
            completion(.failure(error))
        }
    }

    private func fetchToken(from url: URL, completion: @escaping ((Result<BungoTokenResponse, Error>) -> Void)) {
        let codeResult = getTokenCode(url: url)

        switch codeResult {
        case let .success(code):
            getToken(code: code, completion: completion)
        case let .failure(error):
            completion(.failure(error))
        }
    }
}
