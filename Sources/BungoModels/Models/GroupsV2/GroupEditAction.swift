// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GroupEditAction.swift

import Foundation

public extension GroupsV2 {
    struct GroupEditAction: Codable {
        public var about: String?

        public var allowChat: Bool?

        public var avatarImageIndex: Int32?

        public var callsign: String?

        public var chatSecurity: Int32?

        public var defaultPublicity: Int32?

        public var enableInvitationMessagingForAdmins: Bool?

        public var homepage: Int32?

        public var isPublic: Bool?

        public var isPublicTopicAdminOnly: Bool?

        public var locale: String?

        public var membershipOption: Int32?

        public var motto: String?

        public var name: String?

        public var tags: String?

        public var theme: String?

        public enum CodingKeys: String, CodingKey {
            case about
            case allowChat
            case avatarImageIndex
            case callsign
            case chatSecurity
            case defaultPublicity
            case enableInvitationMessagingForAdmins
            case homepage
            case isPublic
            case isPublicTopicAdminOnly
            case locale
            case membershipOption
            case motto
            case name
            case tags
            case theme
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            about = try? container.decode(String.self, forKey: CodingKeys.about)
            allowChat = try? container.decode(Bool.self, forKey: CodingKeys.allowChat)
            avatarImageIndex = try? container.decode(Int32.self, forKey: CodingKeys.avatarImageIndex)
            callsign = try? container.decode(String.self, forKey: CodingKeys.callsign)
            chatSecurity = try? container.decode(Int32.self, forKey: CodingKeys.chatSecurity)
            defaultPublicity = try? container.decode(Int32.self, forKey: CodingKeys.defaultPublicity)
            enableInvitationMessagingForAdmins = try? container.decode(Bool.self, forKey: CodingKeys.enableInvitationMessagingForAdmins)
            homepage = try? container.decode(Int32.self, forKey: CodingKeys.homepage)
            isPublic = try? container.decode(Bool.self, forKey: CodingKeys.isPublic)
            isPublicTopicAdminOnly = try? container.decode(Bool.self, forKey: CodingKeys.isPublicTopicAdminOnly)
            locale = try? container.decode(String.self, forKey: CodingKeys.locale)
            membershipOption = try? container.decode(Int32.self, forKey: CodingKeys.membershipOption)
            motto = try? container.decode(String.self, forKey: CodingKeys.motto)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            tags = try? container.decode(String.self, forKey: CodingKeys.tags)
            theme = try? container.decode(String.self, forKey: CodingKeys.theme)
        }
    }
}
