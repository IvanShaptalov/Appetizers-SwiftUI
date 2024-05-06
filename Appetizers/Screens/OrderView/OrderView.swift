//
//  OrderViwe.swift
//  Appetizers
//
//  Created by PowerMac on 03.05.2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCellView(appetizer: appetizer)
                            
                        }.onDelete(perform: { indexSet in
                            deleteItems(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("order placed")
                    } label: {
                        APOrderButton(title:"$ \(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                }
                
                if order.items.isEmpty {
                    EmptyStateOrder(message: "You have no items in your order.\n Please add an appetizer!")
                }
            }.navigationTitle("🍲 Orders")
            
            
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}
