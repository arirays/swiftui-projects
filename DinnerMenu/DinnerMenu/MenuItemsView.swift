//
//  ContentView.swift
//  DinnerMenu
//
//  Created by AS on 1/4/24.
//

import SwiftUI


struct MenuItemsView: View {
    @StateObject var viewModel = MenuViewModel()
    
    var foodArray: [String] = ["Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8", "Food9", "Food10", "Food11", "Food12" ]
    var drinkArray = ["Drink1", "Drink2", "Drink3", "Drink4", "Drink5", "Drink6", "Drink7","Drink8"]
    var dessertArray = ["Dessert1", "Dessert2", "Dessert3", "Dessert4"]
    
    let columns: [GridItem] = [
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    Section(header:
                            Text("Food")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(foodArray, id: \.self) { food in
                            NavigationLink(value: food) {
                                FoodItemTitleView(name: "\(food)", imageName: "fork.knife.circle")
                            }
                        }
                    }
                    
                    Section(header:
                            Text("Drinks")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(drinkArray, id: \.self) { drink in
                            NavigationLink(value: drink) {
                                FoodItemTitleView(name: "\(drink)", imageName: "fork.knife.circle")
                            }
                        }
                    }
                    
                    Section(header:
                            Text("Desserts")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(dessertArray, id: \.self) { dessert in
                            NavigationLink(value: dessert) {
                                FoodItemTitleView(name: "\(dessert)", imageName: "fork.knife.circle")
                            }
                        }
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            MenuItemsOptionView()
                        } label: {
                            Label("Settings", systemImage: "slider.horizontal.3").foregroundColor(.blue)
                        }

                    }
                })
            }
            .navigationTitle("Menu")
            .navigationDestination(for: String.self) { value in
                Text("Another screen \(value)")
                    .fontWeight(.bold)
                MenuItemDetailsView()
            }
        }
        
    }
}

struct FoodItemTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: "fork.knife.circle")
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
        }
        .padding()
    }
}




#Preview {
    MenuItemsView()
}



