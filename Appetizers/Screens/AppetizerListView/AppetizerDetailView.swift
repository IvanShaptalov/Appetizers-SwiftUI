//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by PowerMac on 04.05.2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    @Binding var isShowingDetailView: Bool
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NitritionInfo(title: "Calories", value: appetizer.calories)
                    NitritionInfo(title: "Carbs", value: appetizer.carbs)
                    NitritionInfo(title: "Protein", value: appetizer.protein)
                }
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetailView = false
            } label: {
                APOrderButton(title: "$ \(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 40)
        .overlay(Button {
            self.isShowingDetailView = false
        } label: {XDismissButton()}, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(isShowingDetailView: .constant(true), appetizer: MockData.sampleAppetizer)
}




struct NitritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .italic()
                .fontWeight(.semibold)
            
        }
    }
}
