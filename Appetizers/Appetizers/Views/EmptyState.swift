//
//  EmptyState.swift
//  Appetizers
//
//  Created by AS on 3/25/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: 10.0)
        }
    }
}



#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message. \nI'm making it a little long for testing")
}
