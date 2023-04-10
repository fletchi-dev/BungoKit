import Foundation

public struct Response<Result: Codable>: Codable {
    public var response: Result
    public var errorCode: Int32
    public var throttleSeconds: Int32
    public var errorStatus: String
    public var message: String
    public var messageData: [String: String]
    public var detailedErrorTrace: String?

    enum CodingKeys: String, CodingKey {
        case response = "Response"
        case errorCode = "ErrorCode"
        case throttleSeconds = "ThrottleSeconds"
        case errorStatus = "ErrorStatus"
        case message = "Message"
        case messageData = "MessageData"
        case detailedErrorTrace = "DetailedErrorTrace"
    }
}

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

public protocol BungoRequest {
    associatedtype Parameters: BungoRequestParameters
    associatedtype Response: Codable

    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Parameters { get }
    var successStatus: Int { get }
}

public protocol BungoRequestParameters {
    var query: [String: String] { get }
    var path: [String: String] { get }
}

public extension BungoRequest {
    func makeURLRequest(baseURL: URL) -> URLRequest {
        var filledPath = path

        for (param, value) in parameters.path {
            filledPath = filledPath.replacingOccurrences(of: "{\(param)}", with: value)
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

public struct SingleComponentResponse<T: Codable>: Codable {
    public var data: T?
    public var privacy: Components.ComponentPrivacySetting
}

public struct DictionaryComponentResponse<T: Codable>: Codable {
    public var data: [String: T]?
    public var privacy: Components.ComponentPrivacySetting
}

public enum BungoModelsError: Error {
    case couldNotDecodeDate(String)
}

open class BungoJSONDecoder: JSONDecoder {
    override public init() {
        super.init()

        dateDecodingStrategy = .custom { decoder in
            let str = try decoder.singleValueContainer().decode(String.self)
            let df = DateFormatter()

            df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            if let date = df.date(from: str) {
                return date
            }

            df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            if let date = df.date(from: str) {
                return date
            }

            throw BungoModelsError.couldNotDecodeDate(str)
        }
    }
}
