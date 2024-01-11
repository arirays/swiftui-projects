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
    
    @State var isPresenting = false
    
    
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
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.foodMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)")
                            }
                        }
                    }
                    
                    Section(header:
                            Text("Drinks")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.drinkMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)")
                            }

                        }
                    }
                    
                    Section(header:
                            Text("Desserts")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ) {
                        ForEach(menuViewModel.dessertMenuItems) { item in
                            NavigationLink {
                                MenuItemDetailsView()
                            } label: {
                                ItemTitleView(title: "\(item.title)")
                            }

                        }
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            isPresenting = true
                        } label: {
                            Label("Settings", systemImage: "slider.horizontal.3").foregroundColor(.blue)
                        }
//                        NavigationLink {
//                            MenuItemsOptionView()
//                        } label: {
//                            Label("Settings", systemImage: "slider.horizontal.3").foregroundColor(.blue)
//                        }
                    }
                })
                .sheet(isPresented: $isPresenting) {
                    NavigationStack {
                        MenuItemsOptionView()
                    }
                }
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
//    let imageName: String
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 100)
                .foregroundStyle(.black)
//            Image(systemName: "fork.knife.circle")
//                .resizable()
//                .frame(width: 90, height: 90)
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .foregroundStyle(.black)
        }
    }
}




#Preview {
    MenuItemsView()
}



