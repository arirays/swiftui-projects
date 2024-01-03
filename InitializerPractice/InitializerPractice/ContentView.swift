//
//  ContentView.swift
//  InitializerPractice
//
//  Created by AS on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    
    var backgroundColor: Color
    var count: Int
    var title: String
    
    //DEFAULT INIT
    /*init(backgroundColor: Color, count: Int, title: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }
     */
    
    // CUSTOMIZED INIT
    /*init(count: Int, title: String) {
        self.count = count
        self.title = title
        
        if title == "Apples" {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .orange
        }
    }
    */
    
    //USING ENUM
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ContentView(count: 100, fruit: .apple)
        }
    }
}
