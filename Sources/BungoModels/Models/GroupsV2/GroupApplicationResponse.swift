// This File was auto generated by BungoKitGen
//
// File: GroupApplicationResponse.swift

import Foundation

public extension GroupsV2 {
    struct GroupApplicationResponse: Codable {
        public var resolution: GroupsV2.GroupApplicationResolveState?

        public enum CodingKeys: String, CodingKey {
            case resolution
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            resolution = try? container.decode(GroupsV2.GroupApplicationResolveState.self, forKey: CodingKeys.resolution)
        }
    }
}
