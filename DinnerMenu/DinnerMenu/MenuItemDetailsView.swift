//
//  MenuItemsView.swift
//  DinnerMenu
//
//  Created by AS on 1/4/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    @State private var price: Int = 0
    @State private var orderQuantity: Int = 0
    @State private var ingredients = ["spinach",
    "broccoli", "carrot", "pasta"]
    
    var body: some View {
        
        ZStack {
            VStack {
                Image("LittleLemonLogo")
                    .resizable()
                    .frame(width: 300, height: 450)
                Text("Price:")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(price)")
                Text("Ordered:")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(orderQuantity)")
                Text("Ingredients:")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach(ingredients, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

#Preview {
    MenuItemDetailsView()
}
