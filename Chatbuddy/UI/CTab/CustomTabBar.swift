//
//  CustomTabBar.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI


enum Tabs: Int{
    case chats = 0
    case contacts = 1
}


struct CustomTabBar: View {
    
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack (alignment: .center){
            //MARK: Chat Button 1
            Button {
                //MARK: Switch Chats
                selectedTab = .chats
            }label: {
                
                TabButtons(buttonText: "Chats", imageName: "bubble.left", isActive: selectedTab == .chats)
                
            }.tint(Color("icons-secondry"))
            //MARK: Button 2
            Button {
                //MARK: New Chat
            } label: {
                VStack (alignment: .center, spacing: 5){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("New Chat")
                        .font(Font.tabBar)
                }
            }.tint(Color("icons-primary"))
            
            //MARK: Button 3
            Button {
                //MARK: Contacts
                selectedTab = .contacts
            } label: {
                
                TabButtons(buttonText: "Contact", imageName: "person", isActive: selectedTab == .contacts)
                
            }.tint(Color("icons-secondry"))
            //MARK: Button End Here
        }.frame(height: 70)
        //MARK: HStack End Here
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.contacts))
}
