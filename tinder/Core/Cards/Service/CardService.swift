//
//  CardService.swift
//  tinder
//
//  Created by Harvir Brar on 14/10/2024.
//

import Foundation


struct CardService {
    func fetchCardModels() async throws -> [CardModel]{
        let users = MockData.users
        return users.map({CardModel(user: $0)})
    }
}
