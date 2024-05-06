//
//  Order.swift
//  Appetizers
//
//  Created by PowerMac on 06.05.2024.
//

import Foundation


final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    var totalPrice : Double {
        items.reduce(0) { $0 + $1.price}
    }
}
