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
                .font(AppFont.title1.bold())
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
                .cornerRadius(16)
            Text(product.price.formatAsDollar())
                .font(AppFont.title2.bold())
            Text(product.description)
                .font(AppFont.caption1)
            Button("Add to Cart"){
                shoppingCartViewModel.addToCart(productID: product.id)
                isProductPresented.toggle()
            }.frame(width: 120, height: 45)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(25)
                .padding()
                .font(AppFont.body.bold())
                .frame(alignment: .center)

        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[2], isProductPresented: .constant(true))
    }
}
