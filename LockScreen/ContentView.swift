//
//  ContentView.swift
//  LockScreen
//
//  Created by Junior Leoncio on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false 
    
    var body: some View {
        VStack {
            if isAuthenticated {
                VStack {
                    Text("Voce está logado!")
                    
                    Button("Log Out") {
                        isAuthenticated = false
                    }
                }
            } else {
                PasscodeView(isAuthenticated: $isAuthenticated)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
