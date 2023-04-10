import Foundation

extension String {
    var tryBase64Encoded: String {
        if let data = data(using: .utf8) {
            return data.base64EncodedString()
        } else {
            return self
        }
    }
}
