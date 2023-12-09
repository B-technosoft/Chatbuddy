//
//  RootView.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .contacts
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .font(Font.chatHeading)
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
        .padding()
    }
}

#Preview {
    RootView()
}
