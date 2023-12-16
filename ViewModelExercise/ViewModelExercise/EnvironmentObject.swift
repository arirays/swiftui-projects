//
//  EnvironmentObject.swift
//  ViewModelExercise
//
//  Created by AS on 12/14/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
//        self.dataArray.append("iPhone")
//        self.dataArray.append("iPad")
        // better use of append:
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}



struct EnvironmentObject: View {
    var body: some View {
        NavigationStack {
            List {
                
            }
        }
    }
}

#Preview {
    EnvironmentObject()
}
