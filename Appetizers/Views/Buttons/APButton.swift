//
//  APButton.swift
//  Appetizers
//
//  Created by PowerMac on 04.05.2024.
//

import SwiftUI


struct APOrderButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .clipShape(.rect(cornerRadius: 10))
    }
}
