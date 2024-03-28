//
//  OrderView.swift
//  Appetizers
//
//  Created by AS on 1/21/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerRowView(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Text("$99.00 - Place order ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 260, height: 50)
                            .foregroundStyle(.white)
                            .background(Color(.brandPrimary))
                            .clipShape(.rect(cornerRadius: 10))
                    }
                    .padding(.bottom, 30)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer!")
                }
            }
            .navigationTitle("🧾Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
