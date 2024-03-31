//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by AS on 1/23/24.
//

import Foundation
import SwiftUI

//Anything that happens on this ViewModel is UI related will be rerouted into MAIN thread.
@MainActor final class AppetizerViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
//    OLD WAY.
/*    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
 */
    
//    NEW WAY.
    func getAppetizers()  {
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
            } catch {
                alertItem = AlertContext.invalidResponse
            }
        }
        
    }
}
