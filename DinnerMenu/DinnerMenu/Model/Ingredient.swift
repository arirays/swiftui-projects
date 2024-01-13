//
//  Ingredient.swift
//  DinnerMenu
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


/* or Soultion
 enum Ingredient: String, CaseIterable {
    case spinach
    case broccoli
    case carrot
    case pasta
    case tomatoSauce
 */
