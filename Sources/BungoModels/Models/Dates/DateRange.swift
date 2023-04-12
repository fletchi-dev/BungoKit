// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DateRange.swift

import Foundation

public extension Dates {
    struct DateRange: Codable {
        public var end: Date?

        public var start: Date?

        public enum CodingKeys: String, CodingKey {
            case end
            case start
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            end = try? container.decode(Date.self, forKey: CodingKeys.end)
            start = try? container.decode(Date.self, forKey: CodingKeys.start)
        }
    }
}
