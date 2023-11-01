class ShoppingCart {
    var items: [String]
    var prices: [Double]
    var totalPrice: Double = 0
    
    init() {
        items = []
        prices = []
    }
    
    func addItem(item: String, price: Double) {
        items.append(item)
        prices.append(price)
        totalPrice += price
    }
    
    func removeItem(item: String, price: Double) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
            if prices.indices.contains(index) {
                totalPrice -= prices[index]
                prices.remove(at: index)
            }
        } else {
            print("Item \(item) not found in the cart.")
        }
    }
}

let cart = ShoppingCart()
cart.addItem(item: "Apple", price: 2.5)
cart.addItem(item: "Banana", price: 1.8)
cart.removeItem(item: "Apple", price: 2.5)
cart.removeItem(item: "Orange", price: 3.0)

// mientras no exista el objeto "Orange" no puede ser eliminado por  ende se manifiesta
// la imprecion de lalinea 25 - print("Item \(item) not found in the cart.")

