//
//  AppetizerListItemView.swift
//  Appetizers
//
//  Created by PowerMac on 03.05.2024.
//

import SwiftUI

struct AppetizerListCellView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            Image(appetizer.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 10))
            
            VStack (alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(2)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading)
        }
    }
}


#Preview {
    AppetizerListCellView(appetizer: MockData.sampleAppetizer)
}
