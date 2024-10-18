//
//  CardModel.swift
//  tinder
//
//  Created by Harvir Brar on 14/10/2024.
//

import Foundation


struct CardModel{
    let user: User
}

extension CardModel : Identifiable, Hashable{
    var id: String{
        return user.id
    }
}
