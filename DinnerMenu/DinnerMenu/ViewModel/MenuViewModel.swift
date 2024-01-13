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
    
    @Published var foodMenuItems: [MenuItem] = MenuItem.testFoodMenuItems
    @Published var drinkMenuItems: [MenuItem] = MenuItem.testMenuItemsDrink
    @Published var dessertMenuItems: [MenuItem] = MenuItem.testMenuItemsDessert
    
    init(foodMenuItems: [MenuItem], drinkMenuItems: [MenuItem], dessertMenuItems: [MenuItem]) {
        self.foodMenuItems = foodMenuItems
        self.drinkMenuItems = drinkMenuItems
        self.dessertMenuItems = dessertMenuItems
    }
}
