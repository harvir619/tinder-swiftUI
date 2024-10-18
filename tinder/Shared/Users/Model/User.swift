//
//  User.swift
//  tinder
//
//  Created by Harvir Brar on 14/10/2024.
//

import Foundation


struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
    
    
    
}
