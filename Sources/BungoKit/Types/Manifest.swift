import BungoManifest
import BungoModels
import Foundation

final class Manifest {
    let version: String
    let client: BungoManifest

    init(version: String, client: BungoManifest) {
        self.version = version
        self.client = client
    }
}
