// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: AwaInitializeResponse.swift

import Foundation

public extension Destiny.Advanced {
    struct AwaInitializeResponse: Codable {
        /// ID used to get the token. Present this ID to the user as it will identify this specific request on their device.
        public var correlationId: String?

        /// True if the PUSH message will only be sent to the device that made this request.
        public var sentToSelf: Bool?

        public enum CodingKeys: String, CodingKey {
            case correlationId
            case sentToSelf
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            correlationId = try? container.decode(String.self, forKey: CodingKeys.correlationId)
            sentToSelf = try? container.decode(Bool.self, forKey: CodingKeys.sentToSelf)
        }
    }
}
