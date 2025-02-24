//
//  Address.swift
//  iOS ecommerce api
//
//  Created by 沈若葉 on 2024-11-06.
//

import Foundation


struct Address: Codable {
    let _id: String
    let user: String
    let street: String
    let city: String
    let state: String
    let zip: String
}


struct AddressRequest: Codable {
    let street: String
    let city: String
    let state: String
    let zip: String
}
