//
//  MenuItem.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {
    var id = UUID()
    var title: String
    var price: Double
    var category: MenuCategory
    var orderCount: Int
    var ingredient: [Ingredient]
    
    init(title: String, price: Double, category: MenuCategory, orderCount: Int, ingredient: [Ingredient]) {
        self.title = title
        self.price = price
        self.category = category
        self.orderCount = orderCount
        self.ingredient = ingredient
    }
}

extension MenuItem {
    static let testFoodMenuItems: [MenuItem] = [
        MenuItem(title: "Food1", price: 10.0, category: .Food, orderCount: 1000, ingredient: [.broccoli, .carrot, .pasta]),
        MenuItem(title: "Food2", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food3", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food4", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food5", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food6", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food7", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food8", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food9", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food10", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food11", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Food12", price: 10.0, category: .Food, orderCount: 1000, ingredient: [])
    ]
    
    static let testMenuItemsDrink = [
        MenuItem(title: "Drink1", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink2", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink3", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink4", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink5", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink6", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink7", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Drink8", price: 10.0, category: .Food, orderCount: 1000, ingredient: [])
    ]
    
    static let testMenuItemsDessert = [
        MenuItem(title: "Dessert1", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Dessert2", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Dessert3", price: 10.0, category: .Food, orderCount: 1000, ingredient: []),
        MenuItem(title: "Dessert4", price: 10.0, category: .Food, orderCount: 1000, ingredient: [])
    ]
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var orderCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}
