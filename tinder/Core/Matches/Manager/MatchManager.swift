//
//  MatchManager.swift
//  tinder
//
//  Created by Harvir Brar on 18/10/2024.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user:User) {
        let didMatch = Bool.random()
        
        if didMatch{
            matchedUser = user
        }
    }
}
