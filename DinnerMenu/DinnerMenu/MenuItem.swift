//
//  MenuItem.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation

struct MenuItem: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let ingredients: [Ingredient]
}

struct MockData {
    static let menuItemsFood = [
        MenuItem(title: "Food1", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food2", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food3", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food4", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food5", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food6", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food7", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food8", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food9", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food10", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food11", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Food12", ingredients: [Ingredient.broccoli])
    ]
    
    static let menuItemsDrink = [
        MenuItem(title: "Drink1", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink2", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink3", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink4", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink5", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink6", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink7", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Drink8", ingredients: [Ingredient.broccoli])
    ]
    
    static let menuItemsDessert = [
        MenuItem(title: "Dessert1", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Dessert2", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Dessert3", ingredients: [Ingredient.broccoli]),
        MenuItem(title: "Dessert4", ingredients: [Ingredient.broccoli])
    ]
}

protocol MenuItems {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var orderCount: Int { get set }
    var pricing: Int {get set}
    var ingredient: [Ingredient] { get set }
}
