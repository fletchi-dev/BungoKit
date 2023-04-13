import Foundation

protocol KeyValueStore {
    func getString(for key: String) -> String?
    func set(string: String?, for key: String)
}

extension UserDefaults: KeyValueStore {
    func getString(for key: String) -> String? {
        string(forKey: key)
    }

    func set(string: String?, for key: String) {
        if let string {
            set(string, forKey: key)
        } else {
            removeObject(forKey: key)
        }
    }
}
