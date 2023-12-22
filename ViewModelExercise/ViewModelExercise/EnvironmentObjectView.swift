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



struct EnvironmentObjectView: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item), label: {
                        Text(item)
                    })
                    }
                }
            .navigationTitle("iOS devices")
            }
        .environmentObject(viewModel)
        }
    }


struct DetailView: View {
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    // here bc we reference/don't use values it doesn't even need and we don't use any @EnvironmentObject or @ObservedObject
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    //@ObservedObject var viewModel: EnvironmentViewModel
    //by using .environmentObject(viewModel) on the first view (NavigationView) this View(and all other Views in the hierarchy) can reference values without any problems bc it pulls data from the environment!
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color(Color.yellow), Color.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // foreground layer
            ScrollView {
                VStack(spacing: 20, content: {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                })
                .foregroundStyle(.blue)
                .font(.largeTitle)
            }
        }
    }
}


#Preview {
    EnvironmentObjectView()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
}
