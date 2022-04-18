import Foundation

protocol Food {
    var name: String { get }
    
    func taste ()
}

protocol Storable: Food {
    var expired: Bool { get }
    var daysToExpire: Int { get }
}

struct Vegetables: Food, Storable {
    var name: String
    var expired: Bool
    var daysToExpire: Int
    
    func taste() {
        print("I've tasted a piece of \(name)")
    }
}

struct Fruits: Food {
    static func < (lhs: Fruits, rhs: Fruits) -> Bool {
        return lhs.name < rhs.name
    }
    
    var name: String
    
    func taste() {
        print("I've tasted a piece of \(name)")
    }
}

struct Sweets: Food {
    var name: String
    
    func taste() {
        print("I've tasted a piece of \(name)")
    }
}

struct Dairies: Food, Storable {
    var name: String
    var expired: Bool
    var daysToExpire: Int

    func taste() {
        print("I've tasted some \(name)")
    }
}

func sortBagByName(products: [Food]) -> [Food] {
    return products.sorted(by: { $0.name < $1.name })
}

func fridgeContains(products: [Storable]) {
    for product in products {
        print("In the fridge we have \(product.name)")
        }
    }

func sortProductsInFridge(products: [Storable]) -> [Storable] {
    for product in fridgeArr {
        for difProd in fridgeArr {
            if product.daysToExpire == difProd.daysToExpire && product.name != difProd.name {
            return products.sorted(by: {$0.name > $1.name} )
        } else {
            continue
        }
    }
}
    return products.sorted(by: {$0.daysToExpire < $1.daysToExpire} )
}

let vegProd = Vegetables(name: "Tomato", expired: true, daysToExpire: 0)
let fruitProd = Fruits(name: "Banana")
let sweetProd = Sweets(name: "Cookie")
let dairyProd = Dairies(name: "Milk", expired: false, daysToExpire: 7)
let dairyProd2 = Dairies(name: "Cheese", expired: false, daysToExpire: 8)
let dairyProd3 = Dairies(name: "Egg", expired: false, daysToExpire: 8)

var index = 0

var productsArr: [Food] = [vegProd, fruitProd, sweetProd, dairyProd, dairyProd2, dairyProd3]
var fridgeArr: [Storable] = []
var sortedProducts = sortBagByName(products: productsArr)

for product in sortedProducts {
    if let product = product as? Storable {
        if !product.expired {
            fridgeArr.append(product)
        } else {
            sortedProducts.remove(at: index)
            index += 1
            continue
        }
    }
    product.taste()
    index += 1
}

var sortedFridge = sortProductsInFridge(products: fridgeArr)
fridgeContains(products: sortedFridge)

