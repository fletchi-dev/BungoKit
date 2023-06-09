// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: ExactSearchRequest.swift

import Foundation

public extension User {
    struct ExactSearchRequest: Codable {
        public var displayName: String?

        public var displayNameCode: Int16?

        public enum CodingKeys: String, CodingKey {
            case displayName
            case displayNameCode
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try? container.decode(String.self, forKey: CodingKeys.displayName)
            displayNameCode = try? container.decode(Int16.self, forKey: CodingKeys.displayNameCode)
        }
    }
}
