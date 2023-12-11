//
//  CreateProfileTF.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import Foundation
import SwiftUI

struct CreateProfileTFStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color("input"))
                .cornerRadius(10)
                .frame(height: 50)
            //MARK: This is refrence For Lable Text 
            configuration
                .font(Font.tabBar)
                .padding()
        }
    }
}
