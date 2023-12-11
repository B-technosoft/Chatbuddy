//
//  SyncContactScreen.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct SyncContactScreen: View {
    
    @Binding var isOnbording: Bool
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("onbord1")
                Text("Awesome 😎")
                    .padding(.top, 15)
                    .font(Font.titleText)
                Text("Continue start chatting with your friend")
                    .font(Font.bodyPeragraph)
                    .foregroundColor(Color.gray.opacity(0.5))
                Spacer()
                Button {
                    //MARK: End All Steps
                    isOnbording = false
                } label: {
                    Text("Continue")
                        .font(Font.button)
                }
                .buttonStyle(OnBordingButtonStyle())
                .padding(.bottom, 10)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SyncContactScreen(isOnbording: .constant(true))
}
