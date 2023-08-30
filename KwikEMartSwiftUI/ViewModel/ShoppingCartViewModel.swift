//
//  ShoppingCartViewModel.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/29/23.
//

import Foundation

class ShoppingCardViewModel: ObservableObject {
    static var shared = ShoppingCardViewModel()
    @Published var catalog: [String : Product] = [:]
    @Published var shoppingCart: [String: Int] = [:]
    @Published var subtotal: Double = 0.00
    @Published var taxRate: Double = 0.16
    @Published var selectedItem: Product? = nil
    
    init(){
        for product in products {
            catalog[product.id] = product
        }
    }
    
    func addToCart(productID: String){
        if let _ = shoppingCart[productID]{
            shoppingCart[productID]! += 1
        } else {
            shoppingCart[productID] = 1
        }
        calulateSubtotal()
    }
    
    func removeFromCart(productID: String){
        if shoppingCart[productID] != nil {
            shoppingCart.removeValue(forKey: productID)
        }
        calulateSubtotal()
    }
    
    func calulateSubtotal(){
        var total = 0.0
        for id in shoppingCart.keys {
            let catalogItem = catalog[id]
            if catalogItem != nil {
                total += Double(catalogItem!.price) * Double(shoppingCart[id]!)
            }
        }
        subtotal = total
    }
    
}
