// This File was auto generated by BungoKitGen
//
// File: GroupApplicationRequest.swift

import Foundation

public extension GroupsV2 {
    struct GroupApplicationRequest: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            message = try? container.decode(String.self, forKey: CodingKeys.message)
        }
    }
}
