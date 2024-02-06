//
//  ContentView.swift
//  LockScreen
//
//  Created by Junior Leoncio on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "visionpro")
                .resizable()
                .symbolVariant(.none)
                .scaledToFit()
                .foregroundStyle(.cyan)
                .frame(width: 250, height: 250)
            
            Image(systemName: "visionpro")
                .resizable()
                .symbolVariant(.fill)
                .scaledToFit()
                .foregroundStyle(.cyan)
                .frame(width: 250, height: 250)
            
            Image(systemName: "visionpro")
                .resizable()
                .symbolVariant(.slash)
                .scaledToFit()
                .foregroundStyle(.cyan)
                .frame(width: 250, height: 250)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
