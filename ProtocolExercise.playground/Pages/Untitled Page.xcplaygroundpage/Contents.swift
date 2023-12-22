import UIKit

protocol Dish {
    var name: String { get }
    var preparationMinutes: Int { get set }
    
    func prepare()
    func plate(artisticLevel: Int)
}

class MainDish: Dish {
    var name: String
    var preparationMinutes: Int
    
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
    
}

let order1 = MainDish(name: "Super Spaghetti", preparationMinutes: 35)
order1.prepare()
order1.plate(artisticLevel: 10)
