import UIKit
import Foundation

let menuAddress = ""

let menuURL = URL(string: menuAddress)
guard let menuURL = menuURL else {
    throw NSError()
}

let request = URLRequest(url: menuURL)
let task = URLSession.shared.dataTask(with: menuURL)
{ data, response, error in
    if let data = data, let responseString = String(data: data, encoding: .utf8) {
        print(responseString)
    }
}

task.resume()
