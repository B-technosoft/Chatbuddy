//
//  OnBordingButtonStyle.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import Foundation
import SwiftUI

struct OnBordingButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            Rectangle()
                .frame(height: 50)
                .cornerRadius(15)
                .foregroundColor(Color("button-primary"))
            configuration.label
                .font(Font.button)
                .foregroundColor(Color("text-button"))
        }
    }
    
}
