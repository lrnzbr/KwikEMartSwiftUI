//
//  ProductDetailView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/29/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product:Product
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    @Binding var isProductPresented: Bool
    var body: some View {
        VStack{
            Text(product.title)
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
                .cornerRadius(16)
            Text("\(product.price)")
            Text(product.description)
            Button("Add to Cart"){
                shoppingCartViewModel.addToCart(productID: product.id)
                isProductPresented.toggle()
            }
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[2], isProductPresented: .constant(true))
    }
}
