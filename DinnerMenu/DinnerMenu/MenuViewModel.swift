//
//  MenuViewModel.swift
//  DinnerMenu
//
//  Created by AS on 1/5/24.
//

import Foundation
import SwiftUI

class MenuViewModel: ObservableObject {
    @Published var foodMenuItems: [MenuItem] = [] // food menu items
    @Published var drinkMenuItems: [MenuItem] = []
    @Published var dessertMenuItems: [MenuItem] = []
    
}
