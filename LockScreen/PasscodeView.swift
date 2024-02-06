//
//  PasscodeView.swift
//  LockScreen
//
//  Created by Junior Leoncio on 05/02/24.
//

import SwiftUI

struct PasscodeView: View {
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
    }
}

#Preview {
    PasscodeView()
}
