//
//  AppetizersListView.swift
//  Appetizers
//

import SwiftUI

struct AppetizerListView: View {
    
    
    var body: some View {
        NavigationStack {
            List(0 ..< 8) { item in
                VStack {
                    HStack {
                        Image(systemName: "photo.artframe")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        VStack {
                            Text("Title name")
                                .font(.title)
                            Text("price")
                                .font(.title2)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AppetizerListView()
}