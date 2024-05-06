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
        ZStack {
            NavigationView {
                List(viewModel.appetizers) {
                    appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
                
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(isShowingDetailView: $viewModel.isShowingDetail, appetizer: viewModel.selectedAppetizer!)
            }
            
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
                    .tint(.brandPrimary)
                    .controlSize(.large)
            }
            
        }.alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}


#Preview {
    AppetizerListView()
}

