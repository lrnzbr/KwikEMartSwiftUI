//
//  ProductDetailView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/29/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product:Product
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
            Button("Add to Cart"){}
        }
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[2])
    }
}
