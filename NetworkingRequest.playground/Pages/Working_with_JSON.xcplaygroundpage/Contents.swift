//: [Previous](@previous)

import Foundation

let jsonString = """
[
    {
      "id" : 1,
      "inventory" : 20,
      "price" : 6,
      "name" : "Beef Pasta"
   },
    {
      "id" : 2,
      "inventory" : 100,
      "price" : 2,
      "name" : "Vanilla Icecream"
}
]
"""

let utf8String = jsonString.utf8
let jsonData = Data(utf8String)

struct  MenuItem: Decodable {
    let id: Int
    let inventory: Int
    let price: Int
    let name: String
}

let decoder = JSONDecoder()
let arrayOfMenuItems = try! decoder.decode([MenuItem].self, from: jsonData)

arrayOfMenuItems.forEach { print($0.name) }
