import Foundation

public enum BungoError: Error {
    case couldNotDecodeDate(String)
    case network(Error)
    case decode(Error, Data)
    case unknown
	case invalidResponse
	case invalidStatus(actual: Int, expected: Int)
}
