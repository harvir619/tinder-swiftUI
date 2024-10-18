//
//  tinderApp.swift
//  tinder
//
//  Created by Harvir Brar on 9/10/2024.
//

import SwiftUI

@main
struct tinderApp: App {
    @StateObject var matchManager  = MatchManager()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
