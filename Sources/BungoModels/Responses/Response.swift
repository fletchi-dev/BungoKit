import Foundation

public struct Response<Result: Codable>: Codable {
    public var response: Result?
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
