//
//  ContentView.swift
//  DinnerMenu
//
//  Created by AS on 1/4/24.
//

import SwiftUI


struct MenuItemsView: View {
    
    @StateObject var menuViewModel = MenuViewModel(
        foodMenuItems: MenuItem.testFoodMenuItems,
        drinkMenuItems: MenuItem.testMenuItemsDrink,
        dessertMenuItems: MenuItem.testMenuItemsDessert)

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
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.foodMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)", imageName: "fork.knife.circle")
                            }

                        }
                    }
                    
                    Section(header:
                            Text("Drinks")
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.drinkMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)", imageName: "fork.knife.circle")
                            }

                        }
                    }
                    
                    Section(header:
                            Text("Desserts")
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.dessertMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)", imageName: "fork.knife.circle")
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

struct ItemTitleView: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: "fork.knife.circle")
                .resizable()
                .frame(width: 90, height: 90)
            Text(title)
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



