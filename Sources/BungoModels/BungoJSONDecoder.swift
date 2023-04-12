import Foundation

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
