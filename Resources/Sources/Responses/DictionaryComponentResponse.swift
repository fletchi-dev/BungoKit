import Foundation

public protocol StringInitializable {
    init?(_ string: String)
}

extension Int8: StringInitializable {}
extension Int16: StringInitializable {}
extension Int32: StringInitializable {}
extension Int64: StringInitializable {}
extension UInt8: StringInitializable {}
extension UInt16: StringInitializable {}
extension UInt32: StringInitializable {}
extension UInt64: StringInitializable {}

extension Dictionary where Key == String {
    func mapKeys<NewKey: Hashable & Codable>(_ map: (Key, Value) -> NewKey) -> [NewKey: Value] {
        var result = [NewKey: Value]()

        for (key, value) in self {
            result[map(key, value)] = value
        }

        return result
    }

    func compactMapKeys<NewKey: Hashable & Codable>(_ map: (Key, Value) -> NewKey?) -> [NewKey: Value] {
        var result = [NewKey: Value]()

        for (key, value) in self {
            guard let key = map(key, value) else {
                continue
            }

            result[key] = value
        }

        return result
    }
}

public struct DictionaryComponentResponse<Key: Hashable & Codable & StringInitializable, Value: Codable>: Codable {
    public var data: [Key: Value]?
    public var privacy: Components.ComponentPrivacySetting

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        let rawData = try container.decodeIfPresent([String: Value].self, forKey: CodingKeys.data)
        data = rawData?.compactMapKeys { key, _ -> Key? in
            Key(key)
        }
        privacy = try container.decode(Components.ComponentPrivacySetting.self, forKey: CodingKeys.privacy)
    }

    // TODO: Implement `encode`
}
