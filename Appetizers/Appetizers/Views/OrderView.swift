//
//  OrderView.swift
//  Appetizers
//
//  Created by AS on 1/21/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerRowView(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 260, height: 50)
                            .foregroundStyle(.white)
                            .background(Color(.brandPrimary))
                            .clipShape(.rect(cornerRadius: 10))
                    }
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer!")
                }
            }
            .navigationTitle("🧾Orders")
        }
    }
}

#Preview {
    OrderView()
}
