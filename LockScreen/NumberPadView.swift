//
//  NumberPadView.swift
//  LockScreen
//
//  Created by Junior Leoncio on 05/02/24.
//

import SwiftUI

struct NumberPadView: View {
    @Binding var passcode: String
    
    private let columns: [GridItem] = [
    
        .init(),
        .init(),
        .init()
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(1 ... 9, id: \.self) { index in
            
                Button {
                    
                } label: {
                    Text("\(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .contentShape(.rect)
                }
            }
            
            Button {
                
            } label: {
                Image(systemName: "delete.backward")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            }
            
            Button {
                
            } label: {
                Text("0")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .contentShape(.rect)
            }
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    NumberPadView(passcode: .constant(""))
}