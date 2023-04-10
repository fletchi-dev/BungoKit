import Foundation

struct AuthURLBuilder {
    let clientID: Int
    let state = UUID().uuidString

    init(clientID: Int) {
        self.clientID = clientID
    }

    var url: URL {
        var components = URLComponents()

        components.scheme = "https"
        components.host = "www.bungie.net"
        components.path = "/en/OAuth/Authorize"

        components.queryItems = [
            "client_id": String(clientID),
            "response_type": "code",
            "state": state,
        ].map { .init(name: $0, value: $1) }

        return components.url!
    }
}
