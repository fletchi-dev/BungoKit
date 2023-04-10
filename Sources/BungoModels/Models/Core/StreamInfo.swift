// This File was auto generated by BungoKitGen
//
// File: StreamInfo.swift

import Foundation

public struct StreamInfo: Codable {
    public var channelName: String?

    public enum CodingKeys: String, CodingKey {
        case channelName = "ChannelName"
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

        channelName = try? container.decode(String.self, forKey: CodingKeys.channelName)
    }
}
