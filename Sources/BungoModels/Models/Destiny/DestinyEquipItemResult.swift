// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyEquipItemResult.swift

import Foundation

public extension Destiny {
    /// The results of an Equipping operation performed through the Destiny API.
    struct DestinyEquipItemResult: Codable {
        /// A PlatformErrorCodes enum indicating whether it succeeded, and if it failed why.
        public var equipStatus: Exceptions.PlatformErrorCodes?

        /// The instance ID of the item in question (all items that can be equipped must, but definition, be Instanced and thus have an Instance ID that you can use to refer to them)
        public var itemInstanceId: Int64?

        public enum CodingKeys: String, CodingKey {
            case equipStatus
            case itemInstanceId
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            equipStatus = try? container.decode(Exceptions.PlatformErrorCodes.self, forKey: CodingKeys.equipStatus)
            let itemInstanceId = try? container.decode(String.self, forKey: CodingKeys.itemInstanceId)
            if let itemInstanceId, let itemInstanceIdInt = Int64(itemInstanceId) {
                self.itemInstanceId = itemInstanceIdInt
            } else {
                self.itemInstanceId = nil
            }
        }
    }
}
