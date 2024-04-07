//
//  CardView.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 3/24/24.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var viewModel: CardsViewModel
    
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var yOffset: CGFloat = 0 // DEL if issues
    @State private var currentImageIndex = 0
    
    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageUrls[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex,
                                              imageCount: imageCount)
                    }
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex,
                                       imageCount: imageCount)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
                    .padding(.leading, 85)
                    .padding(.trailing, 97)
                    .padding(.vertical, 13)
            }
            
            UserInfoView(user: user)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset, y: yOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset) // could also use degrees instead of xOff
        .gesture(
            DragGesture() // CLEANED: .onXed(onDragXed)
                .onChanged({ value in
                    onDragChanged(value)
                })
                .onEnded({ value in
                    onDragEnded(value)
                })
        )
    }
}

private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageUrls.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
        yOffset = 0
    }
    
    func swipeRight() {
        xOffset = 500
        degrees = 12
        
        viewModel.removeCard(model)
    }
    
    func swipeLeft() {
        xOffset = -500
        degrees = -12
        
        viewModel.removeCard(model)
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffset = value.translation.width
        yOffset = value.translation.height / 15
        degrees = Double(value.translation.width / 35)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutOff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView(
        viewModel: CardsViewModel(service: CardService()),
        model: CardModel(user: MockData.users[1])
    )
}
