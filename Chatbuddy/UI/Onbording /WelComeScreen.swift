//
//  WelComeScreen.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct WelComeScreen: View {
    
    @Binding var currentStep: OnBordingStep
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("onbord2")
                Text("Welcome to ChatBuddy")
                    .padding(.top, 15)
                    .font(Font.titleText)
                Text("Simple and free chat experience ")
                    .font(Font.bodyPeragraph)
                    .foregroundColor(Color.gray.opacity(0.5))
                Spacer()
                Button {
                    //MARK: Next Step
                    currentStep = .phoneNumber
                } label: {
                    Text("Let's Start")
                        .font(Font.button)
                }
                .buttonStyle(OnBordingButtonStyle())
                //MARK: Button End Here
                Text("By tapping 'let's Start' you agree our privacy policy")
                    .font(Font.smallText)
                    .padding(.top, 2)
                    .padding(.bottom, 10)
            }
            .padding(.horizontal)
        }
    }
    
}

#Preview {
    WelComeScreen(currentStep: .constant(.welcome))
}
