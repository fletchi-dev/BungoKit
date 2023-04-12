// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyPlugRuleDefinition.swift

import Foundation

public extension Destiny.Definitions.Items {
    /// Dictates a rule around whether the plug is enabled or insertable.
    /// In practice, the live Destiny data will refer to these entries by index. You can then look up that index in the appropriate property (enabledRules or insertionRules) to get the localized string for the failure message if it failed.
    struct DestinyPlugRuleDefinition: Codable {
        /// The localized string to show if this rule fails.
        public var failureMessage: String?

        public enum CodingKeys: String, CodingKey {
            case failureMessage
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            failureMessage = try? container.decode(String.self, forKey: CodingKeys.failureMessage)
        }
    }
}
