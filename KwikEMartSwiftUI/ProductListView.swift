//
//  ProductListView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 7/22/23.
//

import SwiftUI

struct ProductListView: View {
    @State var productSelected: Bool = false
    @State var selectedProduct: Product = products[0]
    
    let layout = [GridItem(.adaptive(minimum: 150, maximum: 300), spacing: 4, alignment: .center)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout){
                ForEach(products, id: \.self){ product in                    ProductCard(product: product)
                        .onTapGesture {
                            selectedProduct = product
                            productSelected.toggle()
                        }
                }
            }
        }.sheet(isPresented: $productSelected){
            ProductDetailView(product: selectedProduct)
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
