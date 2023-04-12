import Foundation

public struct SingleComponentResponse<T: Codable>: Codable {
    public var data: T?
    public var privacy: Components.ComponentPrivacySetting
}
