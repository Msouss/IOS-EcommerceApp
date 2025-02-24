//
//  Order.swift
//  iOS ecommerce api
//
//  Created by 沈若葉 on 2024-11-06.
//

import Foundation


struct Order: Codable {
    let _id: String
    let user: User // Reference to the user who placed the order
    let totalAmount: Double
    let status: String
    let orderDate: Date
    let products: [OrderProduct]
}

struct OrderProduct: Codable {
    let product: Product
    let quantity: Int
}
