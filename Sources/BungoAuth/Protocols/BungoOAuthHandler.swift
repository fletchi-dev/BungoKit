import Foundation

public protocol BungoOAuthHandler {
    init(callbackScheme: String)

    func start(with url: URL, completion: @escaping (Result<URL, Error>) -> Void)
}
