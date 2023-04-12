import Foundation

public struct DictionaryComponentResponse<T: Codable>: Codable {
    public var data: [String: T]?
    public var privacy: Components.ComponentPrivacySetting
}
