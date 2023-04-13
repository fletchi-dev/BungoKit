import BungoModels
import Foundation

final class ManifestFileManager {
    let store: KeyValueStore
    let files: FileManager
    let baseURL: URL

    init(fileManager: FileManager = .default, store: KeyValueStore = UserDefaults.standard, baseURL: URL) {
        files = fileManager
        self.baseURL = baseURL
        self.store = store
    }

    @discardableResult
    func store(version: String, for locale: BungoLocale) -> Bool {
        guard databaseFileExists(for: locale) else {
            return false
        }

        let key = makeKey(for: locale)
        store.set(string: version, for: key)

        return true
    }

    func manifestInfo(for locale: BungoLocale) -> ManifestFileInfo? {
        guard
            let version = databaseVersion(for: locale),
            databaseFileExists(for: locale)
        else {
            resetDatabase(for: locale)
            return nil
        }

        return ManifestFileInfo(
            url: url(for: locale),
            version: version
        )
    }

    func databaseFileExists(for locale: BungoLocale) -> Bool {
        let path = makePath(for: locale)
        return files.isReadableFile(atPath: path)
    }

    func databaseVersion(for locale: BungoLocale) -> String? {
        let key = makeKey(for: locale)
        return store.getString(for: key)
    }

    func url(for locale: BungoLocale) -> URL {
        let filename = makeFilename(for: locale)
        return baseURL.appending(filename)
    }

    private func makeKey(for locale: BungoLocale) -> String {
        "\(locale.rawValue)_version"
    }

    private func makeFilename(for locale: BungoLocale) -> String {
        "manifest_\(locale.rawValue).db"
    }

    private func resetDatabase(for locale: BungoLocale) {
        if databaseFileExists(for: locale) {
            let url = url(for: locale)
            try? files.removeItem(at: url)
        }

        let key = makeKey(for: locale)
        store.set(string: nil, for: key)
    }

    private func makePath(for locale: BungoLocale) -> String {
        url(for: locale).safePath
    }
}
