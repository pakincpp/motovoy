//
//  AddressModel.swift
//  motovoy
//
//  Created by Erick Pac on 5/8/18.
//  Copyright © 2018 Nextdots. All rights reserved.
//

struct CustomerAddress: Codable {
    var id: Int?
    var customerId: Int?
    var name: String?
    var customerName: String?
    var address: String?
    var type: String?
    var city: String?
    var postalCode: String?
    var mobile: String?
    var createdAt: String?
    var updatedAt: String?
    var deletedAt: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case customerId = "client_id"
        case name
        case customerName = "client_name"
        case address
        case type
        case city
        case postalCode = "postal_code"
        case mobile
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
    }
}
