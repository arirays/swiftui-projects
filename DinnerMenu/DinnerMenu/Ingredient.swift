//
//  Ingredient.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation

enum Ingredient: String {
    case spinach
    case broccoli
    case carrot
    case pasta
    case tomatoSauce
    
    var ingredient: String {
        switch self {
        case .spinach:
            return "Spinach"
        case .broccoli:
            return "Broccoli"
        case .carrot:
            return "Carrot"
        case .pasta:
            return "Pasta"
        case .tomatoSauce:
            return "Tomato Sauce"
        }
    }
}
