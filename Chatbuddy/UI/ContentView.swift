//
//  RootView.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        VStack {
            Image("splash")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.custom("Spectral-Bold", size: 30))
        }
        .padding()
    }
}

#Preview {
    RootView()
}
