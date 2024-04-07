//
//  UserInfoView.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 3/24/24.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullName)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    print("DEBUG Show Profile Here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("no bio for now")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .gray], startPoint: .top, endPoint: .bottom)
        )
        .frame(width: UIScreen.main.bounds.width - 20)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    UserInfoView(user: MockData.users[1])
}
