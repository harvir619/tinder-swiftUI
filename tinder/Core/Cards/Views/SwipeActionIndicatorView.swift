//
//  SwipeActionIndicatorView.swift
//  tinder
//
//  Created by Harvir Brar on 10/10/2024.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    
    var body: some View {
        HStack{
            Text("LIKE")
                .font(.title)
                .foregroundColor(.green)
                .fontWeight(.heavy)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green,lineWidth: 2)
                        .frame(width: 100,height:40)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset/SizeConstants.screenCutoff))
            
            Spacer()
            
            Text("NOPE")
                .font(.title)
                .foregroundColor(.red)
                .fontWeight(.heavy)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red,lineWidth: 2)
                        .frame(width: 100,height:40)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset/SizeConstants.screenCutoff) * -1)
                .padding(40)
        }
    }}
    
    #Preview {
        SwipeActionIndicatorView(xOffset: .constant(-1))
    }
