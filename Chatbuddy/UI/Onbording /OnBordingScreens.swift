//
//  OnBordingScreens.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI



enum OnBordingStep: Int {
    
    case welcome = 0
    case phoneNumber = 1
    case Verification = 2
    case profile = 3
    case contact = 4
    
}

struct OnBordingScreens: View {
    
    
    @State var currentStep: OnBordingStep = .welcome
    @Binding var isOnbording: Bool
    
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea(edges : [.top, .bottom])
            
            switch currentStep {
            case .welcome:
                WelComeScreen(currentStep: $currentStep)
                
            case .phoneNumber:
                PhoneNumberScreen(currentStep: $currentStep)
                
            case .Verification:
                VerificationScreen(currentStep: $currentStep)
                
            case .profile:
                CreateProfileScreen(currentStep: $currentStep)
                
            case .contact:
                SyncContactScreen(isOnbording: $isOnbording)
                
            }
            
        }
    }
}

#Preview {
    OnBordingScreens(isOnbording: .constant(true))
}
