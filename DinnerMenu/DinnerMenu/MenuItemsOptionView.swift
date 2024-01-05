//
//  MenuItemsOptionView.swift
//  DinnerMenu
//
//  Created by AS on 1/4/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Selected Categories") {
                    List {
                        Text("\(Category.food.rawValue)")
                        Text("\(Category.drink.rawValue)")
                        Text("\(Category.dessert.rawValue)")
                    }
                }
                Section("Sort By") {
                    List {
                        Text("\(Sorted.popular.rawValue)")
                        Text("\(Sorted.price.rawValue)")
                        Text("\(Sorted.alphabet.rawValue)")
                    }
                }
            }
            .navigationTitle("Filter")
        }
    }
}

enum Category: String {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum Sorted: String {
    case popular = "Most Popular"
    case price = "Price $-$$$"
    case alphabet = "A-Z"
}


#Preview {
    MenuItemsOptionView()
}
