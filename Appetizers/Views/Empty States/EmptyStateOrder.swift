//
//  EmptyStateOrder.swift
//  Appetizers
//
//  Created by PowerMac on 05.05.2024.
//

import SwiftUI

struct EmptyStateOrder: View {
    let imageName: String = "takeoutbag.and.cup.and.straw"
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }.offset(y: -50)
            
            
        }
        
    }
}

#Preview {
    EmptyStateOrder(message: "None")
}
