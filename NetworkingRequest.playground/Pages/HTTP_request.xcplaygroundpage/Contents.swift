import Foundation

// The menu data needs to be fetched from the server first.
// Use URLSession and URLSessionDataTask to perform HTTP request and receive the menu data from the server.

let littleLemonAddress: String  = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

let url = URL(string: littleLemonAddress)

guard let url = url else {
    throw NSError()
}

let request = URLRequest(url: url)

let task = URLSession.shared.dataTask(with: request) { data,_,_ in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}

task.resume()
