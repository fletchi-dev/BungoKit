// This File was auto generated by BungoCodeGen and should not be modified.
//
// File: DestinyVendorResponse.swift

import Foundation

public extension Destiny.Responses {
    /// A response containing all of the components for a vendor.
    struct DestinyVendorResponse: Codable {
        /// Categories that the vendor has available, and references to the sales therein.
        /// COMPONENT TYPE: VendorCategories
        public var categories: SingleComponentResponse<Destiny.Entities.Vendors.DestinyVendorCategoriesComponent>?

        /// A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
        /// COMPONENT TYPE: CurrencyLookups
        public var currencyLookups: SingleComponentResponse<Destiny.Components.Inventory.DestinyCurrenciesComponent>?

        /// Item components, keyed by the vendorItemIndex of the active sale items.
        /// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
        public var itemComponents: DestinyItemComponentSetOfint32?

        /// Sales, keyed by the vendorItemIndex of the item being sold.
        /// COMPONENT TYPE: VendorSales
        public var sales: DictionaryComponentResponse<Int32, Destiny.Entities.Vendors.DestinyVendorSaleItemComponent>?

        /// A map of string variable values by hash for this character context.
        /// COMPONENT TYPE: StringVariables
        public var stringVariables: SingleComponentResponse<Destiny.Components.StringVariables.DestinyStringVariablesComponent>?

        /// The base properties of the vendor.
        /// COMPONENT TYPE: Vendors
        public var vendor: SingleComponentResponse<Destiny.Entities.Vendors.DestinyVendorComponent>?

        public enum CodingKeys: String, CodingKey {
            case categories
            case currencyLookups
            case itemComponents
            case sales
            case stringVariables
            case vendor
        }

        public init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)

            categories = try? container.decode(SingleComponentResponse<Destiny.Entities.Vendors.DestinyVendorCategoriesComponent>.self, forKey: CodingKeys.categories)
            currencyLookups = try? container.decode(SingleComponentResponse<Destiny.Components.Inventory.DestinyCurrenciesComponent>.self, forKey: CodingKeys.currencyLookups)
            itemComponents = try? container.decode(DestinyItemComponentSetOfint32.self, forKey: CodingKeys.itemComponents)
            sales = try? container.decode(DictionaryComponentResponse<Int32, Destiny.Entities.Vendors.DestinyVendorSaleItemComponent>.self, forKey: CodingKeys.sales)
            stringVariables = try? container.decode(SingleComponentResponse<Destiny.Components.StringVariables.DestinyStringVariablesComponent>.self, forKey: CodingKeys.stringVariables)
            vendor = try? container.decode(SingleComponentResponse<Destiny.Entities.Vendors.DestinyVendorComponent>.self, forKey: CodingKeys.vendor)
        }
    }
}
