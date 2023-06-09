// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: TransferStatuses.swift

import Foundation

public extension Destiny {
    /// Whether you can transfer an item, and why not if you can't.
    enum TransferStatuses: Int32, Codable {
        /// The item can be transferred.
        case canTransfer = 0
        /// You can't transfer the item because it is equipped on a character.
        case itemIsEquipped = 1
        /// The item is defined as not transferrable in its DestinyInventoryItemDefinition.nonTransferrable property.
        case notTransferrable = 2
        /// You could transfer the item, but the place you're trying to put it has run out of room! Check your remaining Vault and/or character space.
        case noRoomInDestination = 4
    }
}
