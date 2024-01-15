//
//  MenuViewModel.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation
import SwiftUI

class MenuViewModel: ObservableObject {
//    @Published var items = MenuItem.testMenuItems
    
//    @Published var foodMenuItems: [MenuItem] = MenuItem.testFoodMenuItems
//    @Published var drinkMenuItems: [MenuItem] = MenuItem.testMenuItemsDrink
//    @Published var dessertMenuItems: [MenuItem] = MenuItem.testMenuItemsDessert
    
    @Published var foodMenuItems: [MenuItem] = []
    @Published var drinkMenuItems: [MenuItem] = []
    @Published var dessertMenuItems: [MenuItem] = []
    
    
    init(foodMenuItems: [MenuItem], drinkMenuItems: [MenuItem], dessertMenuItems: [MenuItem]) {
        self.foodMenuItems = MenuItem.testFoodMenuItems
        self.drinkMenuItems = MenuItem.testMenuItemsDrink
        self.dessertMenuItems = MenuItem.testMenuItemsDessert
    }
}
