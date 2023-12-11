//
//  VerificationScreen.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct VerificationScreen: View {
    
    @Binding var currentStep: OnBordingStep
    @State var verificationCode = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Verification")
                    .font(Font.titleText)
                    .padding(.top, 45)
                Text("Enter 6 digit verification we sent on your device")
                    .font(Font.bodyPeragraph)
                //MARK: Number Text Field
                ZStack{
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(Color("input"))
                    HStack{
                        TextField("", text: $verificationCode)
                            .font(Font.bodyPeragraph)
                        Spacer()
                        Button{
                            verificationCode = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                        }.frame(width: 20, height: 20)
                            .tint(Color("icon-input"))
                    }
                    .padding()
                }
                Spacer()
                Button {
                    currentStep = .profile
                }
            label: {
                Text("Next")
            }.buttonStyle(OnBordingButtonStyle())
                //MARK: Button END Here
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    VerificationScreen(currentStep: .constant(.Verification))
}
