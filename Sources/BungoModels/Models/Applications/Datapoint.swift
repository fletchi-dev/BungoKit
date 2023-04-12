// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: Datapoint.swift

import Foundation

public extension Applications {
    struct Datapoint: Codable {
        /// Count associated with timestamp
        public var count: Double?

        /// Timestamp for the related count.
        public var time: Date?

        public enum CodingKeys: String, CodingKey {
            case count
            case time
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            count = try? container.decode(Double.self, forKey: CodingKeys.count)
            time = try? container.decode(Date.self, forKey: CodingKeys.time)
        }
    }
}
