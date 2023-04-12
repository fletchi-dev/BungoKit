import Foundation

public protocol BungoRequest {
    associatedtype Parameters: BungoRequestParameters
    associatedtype Response: Codable

    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Parameters { get }
    var successStatus: Int { get }
}

public extension BungoRequest {
    func makeURLRequest(baseURL: URL) -> URLRequest {
        var filledPath = path

        for (param, value) in parameters.path {
            filledPath = filledPath.replacingOccurrences(of: "{" + param + "}", with: value)
        }

        let queryItems = parameters.query.map { param, value in
            URLQueryItem(name: param, value: value)
        }

        let url = baseURL.appendingPathComponent(filledPath)
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        components.queryItems = queryItems

        var request = URLRequest(url: components.url!)
        request.httpMethod = method.rawValue

        return request
    }
}
