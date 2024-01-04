//
//  NestlyApp.swift
//  Nestly
//
//  Created by AS on 12/11/23.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - class that manages Models for View
 */


@main
struct NestlyApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(root: {
                ListView()
            })
            .environmentObject(ListViewModel())
        }
    }
}
