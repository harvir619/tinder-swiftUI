//
//  CardImageIndicatorView.swift
//  tinder
//
//  Created by Harvir Brar on 10/10/2024.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let currentImageIndex: Int
    let imageCount: Int
    
    
    
    
    var body: some View {
        HStack{
            ForEach(0 ..< imageCount, id: \.self){
                index in Capsule()
                    .frame(width:imageIndicatorWidth,height: 4)
                    .foregroundColor(index == currentImageIndex ? .white: .gray)
                    .padding(.top,8)
            }
            
        }
    }
    
}

private extension CardImageIndicatorView{
    var imageIndicatorWidth: CGFloat{
        return SizeConstants.cardWidth / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(currentImageIndex: 1, imageCount: 5)
}
