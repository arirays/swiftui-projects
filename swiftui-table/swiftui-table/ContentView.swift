//
//  ContentView.swift
//  swiftui-table
//
//  Created by AS on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var people = [
        Singer(name: "Taylor", lastName: "Swift", ranking: 95),
        Singer(name: "Olivia", lastName: "Rodrigo", ranking: 80),
        Singer(name: "Billie", lastName: "Eilish", ranking: 70),
        Singer(name: "Katy", lastName: "Perry", ranking: 75)
    ]
    
    @State private var sortOrder = [KeyPathComparator(\Singer.name)]
    
    @State private var selection: Singer.ID?
    
    var body: some View {
        Table(people, selection: $selection, sortOrder: $sortOrder) {

            TableColumn("Name", value: \.name)
            TableColumn("Last Name", value: \.lastName)
            TableColumn("Ranking") {
                people in
                Text(String(people.ranking))
            }
        }
        .onChange(of: sortOrder) { newOrder in
            people.sort(using: newOrder)
        }
    }
}


struct Singer: Identifiable {
    let name: String
    let lastName: String
    let ranking: Int
    let id = UUID()
    
    var fullName: String { name + " " + lastName}
}


#Preview {
    ContentView()
}
