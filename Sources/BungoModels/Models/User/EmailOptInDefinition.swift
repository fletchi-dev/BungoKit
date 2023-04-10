// This File was auto generated by BungoKitGen
//
// File: EmailOptInDefinition.swift

import Foundation

public extension User {
    /// Defines a single opt-in category: a wide-scoped permission to send emails for the subject related to the opt-in.
    struct EmailOptInDefinition: Codable {
        /// Information about the dependent subscriptions for this opt-in.
        public var dependentSubscriptions: [User.EmailSubscriptionDefinition]?
        /// The unique identifier for this opt-in category.
        public var name: String?
        /// If true, this opt-in setting should be set by default in situations where accounts are created without explicit choices about what they're opting into.
        public var setByDefault: Bool?
        /// The flag value for this opt-in category. For historical reasons, this is defined as a flags enum.
        public var value: User.OptInFlags?

        public enum CodingKeys: String, CodingKey {
            case dependentSubscriptions
            case name
            case setByDefault
            case value
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            dependentSubscriptions = try? container.decode([User.EmailSubscriptionDefinition].self, forKey: CodingKeys.dependentSubscriptions)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            setByDefault = try? container.decode(Bool.self, forKey: CodingKeys.setByDefault)
            value = try? container.decode(User.OptInFlags.self, forKey: CodingKeys.value)
        }
    }
}
