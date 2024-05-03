//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by PowerMac on 03.05.2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) {
                appetizer in
                AppetizerListCellView(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}


#Preview {
    AppetizerListView()
}

