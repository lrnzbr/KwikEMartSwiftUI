//
//  Product.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 7/22/23.
//

import Foundation

struct Product : Hashable {
    var id = UUID().uuidString
    var title: String
    var image: String
    var price: Double
    var description: String
}

let products = [

    Product(title: "Buzz Cola", image: "buzzCola", price: 1.99, description: "Tasty refreshing Cola"),
    Product(title: "Crab Juice", image: "crabJuice", price: 3.99, description: "Better than Mountain Dew"),
    Product(title: "Duff Beer", image: "duffBeer", price: 2.50, description: "The Beer of Springfield"),
    Product(title: "Flaming Moe", image: "flamingMoe", price: 8.19, description: "Just add Cough Syrup"),
    Product(title: "Fudd Beer", image: "fuddBeer", price: 7.99, description: "Shelbyville Beer"),
    Product(title: "Fugu Fish", image: "fuguFish", price: 12.99, description: "Best 24 hours of your life"),
    Product(title: "Buzz Cola", image: "buzzCola", price: 1.99, description: "Tasty refreshing Cola"),
    Product(title: "Krusty Burger", image: "krustyBurger", price: 6.59, description: "Krusty Goodness on a bun"),
    Product(title: "Krusy O's", image: "krustyOs", price: 4.59, description: "Krusty Goodness in a bowl."),
    Product(title: "Malk", image: "malk", price: 0.59, description: "Trust me, you can drink it."),
    Product(title: "Sprinkle Donut", image: "donut", price: 2.99, description: "Homer's favorite donut")
]
