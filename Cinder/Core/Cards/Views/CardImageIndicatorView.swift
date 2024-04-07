//
//  CardImageIndicatorView.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/6/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    
    let currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0 ..< imageCount, id: \.self) { index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndictorWidth, height: 4)
                    .padding(.top, 8)
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndictorWidth: CGFloat {
        return SizeConstants.cardWidth / CGFloat(imageCount) - 20
    }
}

#Preview {
    CardImageIndicatorView(currentImageIndex: 1, imageCount: 5)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
