//
//  MenuItem.swift
//  DinnerMenu
//


import Foundation


protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var orderCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {
    let id = UUID()
    var title: String
    var price: Double
    var category: MenuCategory
    var orderCount: Int
    var ingredients: [Ingredient]
    
    init(title: String, price: Double, category: MenuCategory, orderCount: Int, ingredients: [Ingredient]) {
        self.title = title
        self.price = price
        self.category = category
        self.orderCount = orderCount
        self.ingredients = ingredients
    }
   /*
    var displayPrice: String {
    String(round:(price / 0.01) * 0.01
    }
    */
    
}

extension MenuItem {
    static let testFoodMenuItems: [MenuItem] = [
        MenuItem(title: "Food1", price: 10.0, category: .food, orderCount: 1000, ingredients: [.broccoli, .carrot, .pasta]),
        MenuItem(title: "Food2", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food3", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food4", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food5", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food6", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food7", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food8", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food9", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food10", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food11", price: 10.0, category: .food, orderCount: 1000, ingredients: []),
        MenuItem(title: "Food12", price: 10.0, category: .food, orderCount: 1000, ingredients: [])
    ]
    
    static let testMenuItemsDrink = [
        MenuItem(title: "Drink1", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink2", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink3", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink4", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink5", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink6", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink7", price: 10.0, category: .drink, orderCount: 1000, ingredients: []),
        MenuItem(title: "Drink8", price: 10.0, category: .drink, orderCount: 1000, ingredients: [])
    ]
    
    static let testMenuItemsDessert = [
        MenuItem(title: "Dessert1", price: 10.0, category: .dessert, orderCount: 1000, ingredients: []),
        MenuItem(title: "Dessert2", price: 10.0, category: .dessert, orderCount: 1000, ingredients: []),
        MenuItem(title: "Dessert3", price: 10.0, category: .dessert, orderCount: 1000, ingredients: []),
        MenuItem(title: "Dessert4", price: 10.0, category: .dessert, orderCount: 1000, ingredients: [])
    ]
}


