//
//  ImageScrollingOverlay.swift
//  tinder
//
//  Created by Harvir Brar on 10/10/2024.
//

import SwiftUI

struct ImageScrollingOverlayView: View {
    @Binding var currentImageIndex:Int
    
    let imageCount: Int
    
    var body: some View {
        HStack{
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment:false)
                }
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(.white.opacity(0.05))
    }
}

private extension ImageScrollingOverlayView {
    func updateImageIndex(increment: Bool){
        if increment {
            guard currentImageIndex<imageCount-1 else { return }
            currentImageIndex += 1
        }else{
            guard currentImageIndex>0 else { return }
            currentImageIndex -= 1
        }
    }
}


#Preview {
    ImageScrollingOverlayView(currentImageIndex: .constant(1),imageCount:2)
}
