//
//  CardView.swift
//  tinder-app
//
//  Created by Harvir Brar on 9/10/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment:.bottom){
            Image(.suzy)
                .resizable()
                .scaledToFill()
                .frame(width:cardWidth,height:cardHeight)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            UserInfoView()
        }
    }
}

private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }

    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }

}

#Preview {
    CardView()
}
