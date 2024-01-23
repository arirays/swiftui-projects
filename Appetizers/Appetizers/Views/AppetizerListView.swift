//
//  AppetizersListView.swift
//  Appetizers
//

import SwiftUI

struct AppetizerListView: View {
    
    
    var body: some View {
        NavigationStack {
            List(MockData.appetizers) { appetizer in
                    HStack {
                        Image("asian-flank-steak")
                            .resizable()
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
    }
}

#Preview {
    AppetizerListView()
}
