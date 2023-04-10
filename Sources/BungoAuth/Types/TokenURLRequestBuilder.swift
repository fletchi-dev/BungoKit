import Foundation

struct TokenURLRequestBuilder {
    let authCode: String
    let clientID: Int
    let clientSecret: String

    init(authCode: String, clientID: Int, clientSecret: String) {
        self.clientID = clientID
        self.authCode = authCode
        self.clientSecret = clientSecret
    }

    var urlRequest: URLRequest {
        var components = URLComponents()

        components.scheme = "https"
        components.host = "www.bungie.net"
        components.path = "/platform/app/oauth/token/"

        let url = components.url!
        var urlRequest = URLRequest(url: url)
        let auth = "\(clientID):\(clientSecret)"

        urlRequest.httpMethod = "POST"
        urlRequest.addValue("Basic \(auth.tryBase64Encoded)", forHTTPHeaderField: "Authorization")
        urlRequest.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let bodyData: [String: String] = [
            "grant_type": "authorization_code",
            "code": authCode,
        ]

        urlRequest.httpBody = bodyData
            .map { "\($0)=\($1)" }
            .joined(separator: "&")
            .data(using: .utf8)

        return urlRequest
    }
}
