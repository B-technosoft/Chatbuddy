//
//  TabButtons.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct TabButtons: View {
    
    var buttonText : String
    var imageName : String
    var isActive : Bool
    
    
    var body: some View {
        GeometryReader { s in
            
            if isActive {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: s.size.width/2, height: 3)
                    .padding(.leading, s.size.width/4)
            }
            VStack (alignment: .center, spacing: 5){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text(buttonText)
                    .font(Font.tabBar)
            }
            .frame(width: s.size.width,height: s.size.height)
        }
    }
}

#Preview {
    TabButtons(buttonText: "Chats", imageName: "bubble.left", isActive: false)
}
