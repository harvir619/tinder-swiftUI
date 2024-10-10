//
//  UserInfoView.swift
//  tinder
//
//  Created by Harvir Brar on 10/10/2024.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("Suzy")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("30")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    print("DEBUG: Show profile here...")
                } label:{
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Singer | Actress")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
