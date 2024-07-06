//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Ewelyn Silva on 15/02/24.
//

import Foundation

struct ProductType: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrince: String {
        return "R$" + price.formatPrince()
    }
}
