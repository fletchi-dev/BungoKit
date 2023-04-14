import BungoModels
import Foundation

struct ManifestResponseCache {
    let date: Date
    let data: Requests.Destiny2.GetDestinyManifestRequest.Response

    init(data: Requests.Destiny2.GetDestinyManifestRequest.Response) {
        date = Date()
        self.data = data
    }
}
