// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: EntityActionResult.swift

import Foundation

public extension Entities {
    struct EntityActionResult: Codable {
        public var entityId: Int64?

        public var result: Exceptions.PlatformErrorCodes?

        public enum CodingKeys: String, CodingKey {
            case entityId
            case result
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            let entityId = try? container.decode(String.self, forKey: CodingKeys.entityId)
            if let entityId, let entityIdInt = Int64(entityId) {
                self.entityId = entityIdInt
            } else {
                self.entityId = nil
            }
            result = try? container.decode(Exceptions.PlatformErrorCodes.self, forKey: CodingKeys.result)
        }
    }
}
