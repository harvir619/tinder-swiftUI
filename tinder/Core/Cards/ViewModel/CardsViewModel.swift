//
//  CardsViewModel.swift
//  tinder
//
//  Created by Harvir Brar on 14/10/2024.
//

import Foundation

@MainActor
class CardsViewModel : ObservableObject{
    @Published var cardModels = [CardModel]()
    @Published var buttonSwipeAction : SwipeAction?
    
    private let service:CardService
    
    init(service: CardService){
        self.service = service
        Task{await fetchCardModels()}
    }
    
    func fetchCardModels() async{
        do {
            self.cardModels = try await service.fetchCardModels()
        }catch{
            print("DEBUG: failed to fetch cards with error: \(error)")
        }
        
    }
    
    func removeCard(_ card: CardModel){
        guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else {return}
        cardModels.remove(at:index)
        
    }
    
}
