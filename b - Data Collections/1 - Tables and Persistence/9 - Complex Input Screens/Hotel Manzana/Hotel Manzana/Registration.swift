//
//  Registration.swift
//  Hotel Manzana
//
//  Created by Oğuz Kaan Altun on 19.02.2023.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var hasWifi: Bool
    var roomType: RoomType
}

struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
}
