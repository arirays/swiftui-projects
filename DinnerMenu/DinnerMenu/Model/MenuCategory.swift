//
//  MenuCategory.swift
//  DinnerMenu
//


import Foundation

enum MenuCategory: String {
    case food
    case drink
    case dessert
    
    var category: String {
        switch self {
        case .food:
            return "Food"
        case .drink:
            return "Drink"
        case .dessert:
            return "Dessert"
        }
    }
}

/*
 enum MenuCategory: String {
    case food, drink, dessert
 }
 
 
 
 */
