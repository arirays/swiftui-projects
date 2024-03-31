//
//  AppetizersListView.swift
//  Appetizers
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerRowView(appetizer: appetizer)
//                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("Appetizers")
                .listStyle(.plain)
                .disabled(isShowingDetail)
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}
        


#Preview {
    AppetizerListView()
}

struct AppetizerRowView: View {
    @ObservedObject var viewModel = AppetizerViewModel()
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .scaledToFit()
//                .frame(width: 120, height: 90)
//                .clipShape(.rect(cornerRadius: 8))
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 8))
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 8))
            }

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
}
