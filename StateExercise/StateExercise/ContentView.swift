//
//  ContentView.swift
//  StateExercise
//
//  Created by AS on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            // content layer
            VStack(spacing: 20, content: {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20, content: {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        // count = count + 1
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "BUTTON 2 was pressed"
//                        count = count - 1
                        count -= 1
                    }
                })
            })
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
