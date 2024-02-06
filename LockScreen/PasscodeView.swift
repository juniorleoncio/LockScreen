//
//  PasscodeView.swift
//  LockScreen
//
//  Created by Junior Leoncio on 05/02/24.
//

import SwiftUI

struct PasscodeView: View {
    @Binding var isAuthenticated: Bool
    @State private var passcode = ""
    
    var body: some View {
        VStack(spacing: 48) {
            VStack(spacing: 24) {
                Text("Insira seu Pin")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text("Por Favor insira o Pin de acesso a sua conta.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
            
            // indicator view
            PasscodeIndicatorView(passcode: $passcode)
            
            Spacer()
            
            // numberpad view
            
            NumberPadView(passcode: $passcode)
        }
        .onChange(of: passcode, perform: { value in
            verifyPasscode()
        })
    }
    
    private func verifyPasscode() {
        guard passcode.count == 4 else { return }
        
        Task {
            try? await Task.sleep(nanoseconds: 125_000_000)
            isAuthenticated = passcode == "7777"
            passcode = ""
        }
    }
}

#Preview {
    PasscodeView(isAuthenticated: .constant(false))
}
