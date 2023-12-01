//
//  UserFetchingClient.swift
//  RandomUser
//
//  Created by AS on 10/6/23.
//

import Foundation

// Create a URL
struct UserFetchingClient {
    static private let url = URL(string: "https://randomuser.me/api?results=10&format=pretty")!
    
//    Create a URL request that RETRIEVES the randomly generated users from the URL. Use throws to the function signature to indicate that it can throw an error.
    static func getUsers() async throws -> [User] {
        async let (data, _ ) = URLSession.shared.data(from: url)
        let response = try await JSONDecoder().decode(Response.self, from: data)
//        Converting JSON to a String but usually it would be a User struct with UUID()
//        Also adding await keyword for retrieving values from async functions
        return response.users
    }

}

