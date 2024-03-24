//
//  CardView.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 3/24/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 100)
        }
    }
}

private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 10
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
