// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: GroupV2.swift

import Foundation

public extension GroupsV2 {
    struct GroupV2: Codable {
        public var about: String?

        public var allowChat: Bool?

        public var avatarImageIndex: Int32?

        public var avatarPath: String?

        public var banExpireDate: Date?

        public var bannerPath: String?

        public var chatSecurity: GroupsV2.ChatSecuritySetting?

        public var clanInfo: GroupsV2.GroupV2ClanInfoAndInvestment?

        public var conversationId: Int64?

        public var creationDate: Date?

        public var defaultPublicity: GroupsV2.GroupPostPublicity?

        public var enableInvitationMessagingForAdmins: Bool?

        public var features: GroupsV2.GroupFeatures?

        public var groupId: Int64?

        public var groupType: GroupsV2.GroupType?

        public var homepage: GroupsV2.GroupHomepage?

        public var isDefaultPostPublic: Bool?

        public var isPublic: Bool?

        public var isPublicTopicAdminOnly: Bool?

        public var locale: String?

        public var memberCount: Int32?

        public var membershipIdCreated: Int64?

        public var membershipOption: GroupsV2.MembershipOption?

        public var modificationDate: Date?

        public var motto: String?

        public var name: String?

        public var tags: [String]?

        public var theme: String?

        public enum CodingKeys: String, CodingKey {
            case about
            case allowChat
            case avatarImageIndex
            case avatarPath
            case banExpireDate
            case bannerPath
            case chatSecurity
            case clanInfo
            case conversationId
            case creationDate
            case defaultPublicity
            case enableInvitationMessagingForAdmins
            case features
            case groupId
            case groupType
            case homepage
            case isDefaultPostPublic
            case isPublic
            case isPublicTopicAdminOnly
            case locale
            case memberCount
            case membershipIdCreated
            case membershipOption
            case modificationDate
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
            avatarPath = try? container.decode(String.self, forKey: CodingKeys.avatarPath)
            banExpireDate = try? container.decode(Date.self, forKey: CodingKeys.banExpireDate)
            bannerPath = try? container.decode(String.self, forKey: CodingKeys.bannerPath)
            chatSecurity = try? container.decode(GroupsV2.ChatSecuritySetting.self, forKey: CodingKeys.chatSecurity)
            clanInfo = try? container.decode(GroupsV2.GroupV2ClanInfoAndInvestment.self, forKey: CodingKeys.clanInfo)
            let conversationId = try? container.decode(String.self, forKey: CodingKeys.conversationId)
            if let conversationId, let conversationIdInt = Int64(conversationId) {
                self.conversationId = conversationIdInt
            } else {
                self.conversationId = nil
            }
            creationDate = try? container.decode(Date.self, forKey: CodingKeys.creationDate)
            defaultPublicity = try? container.decode(GroupsV2.GroupPostPublicity.self, forKey: CodingKeys.defaultPublicity)
            enableInvitationMessagingForAdmins = try? container.decode(Bool.self, forKey: CodingKeys.enableInvitationMessagingForAdmins)
            features = try? container.decode(GroupsV2.GroupFeatures.self, forKey: CodingKeys.features)
            let groupId = try? container.decode(String.self, forKey: CodingKeys.groupId)
            if let groupId, let groupIdInt = Int64(groupId) {
                self.groupId = groupIdInt
            } else {
                self.groupId = nil
            }
            groupType = try? container.decode(GroupsV2.GroupType.self, forKey: CodingKeys.groupType)
            homepage = try? container.decode(GroupsV2.GroupHomepage.self, forKey: CodingKeys.homepage)
            isDefaultPostPublic = try? container.decode(Bool.self, forKey: CodingKeys.isDefaultPostPublic)
            isPublic = try? container.decode(Bool.self, forKey: CodingKeys.isPublic)
            isPublicTopicAdminOnly = try? container.decode(Bool.self, forKey: CodingKeys.isPublicTopicAdminOnly)
            locale = try? container.decode(String.self, forKey: CodingKeys.locale)
            memberCount = try? container.decode(Int32.self, forKey: CodingKeys.memberCount)
            let membershipIdCreated = try? container.decode(String.self, forKey: CodingKeys.membershipIdCreated)
            if let membershipIdCreated, let membershipIdCreatedInt = Int64(membershipIdCreated) {
                self.membershipIdCreated = membershipIdCreatedInt
            } else {
                self.membershipIdCreated = nil
            }
            membershipOption = try? container.decode(GroupsV2.MembershipOption.self, forKey: CodingKeys.membershipOption)
            modificationDate = try? container.decode(Date.self, forKey: CodingKeys.modificationDate)
            motto = try? container.decode(String.self, forKey: CodingKeys.motto)
            name = try? container.decode(String.self, forKey: CodingKeys.name)
            tags = try? container.decode([String].self, forKey: CodingKeys.tags)
            theme = try? container.decode(String.self, forKey: CodingKeys.theme)
        }
    }
}
