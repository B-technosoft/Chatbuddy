//
//  PhoneVerificationScreen.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct PhoneNumberScreen: View {
    
    @Binding var currentStep: OnBordingStep
    @State var phoneNumber = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Verification")
                    .font(Font.titleText)
                    .padding(.top, 45)
                Text("Enter your mobile number below. We'll will send you a verification code after.")
                    .font(Font.bodyPeragraph)
                //MARK: Number Text Field
                ZStack{
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(Color("input"))
                    HStack{
                        TextField("Mobile Number", text: $phoneNumber)
                            .font(Font.bodyPeragraph)
                        Spacer()
                        Button{
                            phoneNumber = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                        }.frame(width: 20, height: 20)
                            .tint(Color("icon-input"))
                    }
                    .padding()
                }
                Spacer()
                Button {
                    currentStep = .Verification
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
    PhoneNumberScreen(currentStep: .constant(.phoneNumber))
}
