//
//  MenuCategory.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation

enum MenuCategory: String {
    case Food
    case Drink
    case Dessert
    
    var category: String {
        switch self {
        case .Food:
            return "Food"
        case .Drink:
            return "Drink"
        case .Dessert:
            return "Dessert"
        }
    }
}
