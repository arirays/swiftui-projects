//
//  ContentView.swift
//  CustomDataTypes-Model
//
//  Created by AS on 12/13/23.
//

import SwiftUI



struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}


struct ContentView: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Ari", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Ari", userName: "ariana888", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "sammy123", followerCount: 150, isVerified: false),
        UserModel(displayName: "Chris", userName: "ninja", followerCount: 355, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
