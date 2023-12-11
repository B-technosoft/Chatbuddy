//
//  CreateProfileScreen.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct CreateProfileScreen: View {
    
    @Binding var currentStep: OnBordingStep
    @State var firstName = ""
    @State var lastName = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Setup your profile")
                    .font(Font.titleText)
                    .padding(.top, 45)
                Text("Just enter few details or get start")
                    .font(Font.bodyPeragraph)
                //MARK: Profile Button
                Button{
                    //Show Action Sheet
                } label: {
                    ZStack{
                        Circle()
                            .foregroundColor(Color.white)
                        Circle()
                            .stroke(Color("profile-border"), style: StrokeStyle(lineWidth: 2))
                        
                        Image(systemName:"camera.fill")
                            .tint(Color("icon-input"))
                    }
                    .frame(width: 120, height: 120)
                }
                .padding(.top, 20)
                //FirstName
                TextField("First Name", text: $firstName)
                    .textFieldStyle(CreateProfileTFStyle())
                //Last Name
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(CreateProfileTFStyle())
                Spacer()
                //MARK: Next Btton
                Button {
                    currentStep = .contact
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
    CreateProfileScreen(currentStep: .constant(.profile))
}
