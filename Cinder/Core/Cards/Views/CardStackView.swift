//
//  CardStackView.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/6/24.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) { card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
