//
//  RootView.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .chats
    @State var isOnbording = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .font(Font.chatHeading)
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
        .fullScreenCover(isPresented: $isOnbording, content: {
            OnBordingScreens(isOnbording: $isOnbording)
        })
    }
}

#Preview {
    RootView()
}
