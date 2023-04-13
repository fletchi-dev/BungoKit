import BungoManifest
import BungoModels
import Foundation

public extension BungoKit {
    private func initializeManifestIfNeeded(locale overrideLocale: BungoLocale? = nil) async throws -> BungoManifest {
        let locale = overrideLocale ?? locale
        let fallback = manifestFileManager.manifestInfo(for: locale)

        guard
            let response = try? await api.send(Requests.Destiny2.GetDestinyManifestRequest()).response,
            let version = response.version,
            let path = response.mobileWorldContentPaths?[locale.rawValue],
            version != fallback?.version
        else {
            if let fallback {
                do {
                    print("using local manifest")
                    return try BungoManifest(at: fallback.url.safePath)
                } catch {
                    print("couldn't get a manifest")
                    throw BungoKitError.manifest(error)
                }
            }

            print("couldn't find a manifest")
            throw BungoKitError.notFound
        }

        let manifest: BungoManifest

        do {
            let localURL = manifestFileManager.url(for: locale)

            manifest = try await BungoManifest(
                remote: api.url(at: path),
                localURL: localURL
            )

            manifestFileManager.store(version: version, for: locale)
        } catch {
            print("couldn't initialize manifest")
            throw BungoKitError.manifest(error)
        }

        print("got new manifest")
        manifests[locale] = Manifest(version: version, client: manifest)

        return manifest
    }

    func definition<Def: ManifestDefinition>(_ definitionType: Def, for hash: UInt32, in locale: BungoLocale? = nil) async throws -> Def.Result? {
        let manifest = try await initializeManifestIfNeeded(locale: locale)
        return try manifest.get(hash: hash, for: definitionType)
    }
}
