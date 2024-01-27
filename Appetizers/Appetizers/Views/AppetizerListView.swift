//
//  AppetizersListView.swift
//  Appetizers
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.appetizers) { appetizer in
                    HStack {
                        AppetizerRemoteImage(urlString: appetizer.imageURL)
                            .scaledToFit()
                            .frame(width: 120, height: 90)
                            .clipShape(.rect(cornerRadius: 8))
                        VStack(alignment: .leading, spacing: 5) {
                            Text(appetizer.name)
                                .font(.title2)
                                .fontWeight(.medium)
                            Text("$\(appetizer.price, specifier: "%.2f")")
                                .foregroundStyle(.secondary)
                                .font(.title3)
                                .fontWeight(.semibold)
                        }
                        .padding(.leading)
                    }
            }
            .navigationTitle("Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
