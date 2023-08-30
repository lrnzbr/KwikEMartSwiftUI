//
//  ProductListView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 7/22/23.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    @State var productSelected: Bool = false
    
    let layout = [GridItem(.adaptive(minimum: 150, maximum: 300), spacing: 4, alignment: .center)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout){
                ForEach(products, id: \.self){ product in                    ProductCard(product: product)
                        .onTapGesture {
                            shoppingCartViewModel.selectedItem = product
                            productSelected.toggle()
                        }
                }
            }
        }.sheet(isPresented: $productSelected){
            if let prod = shoppingCartViewModel.selectedItem {
                ProductDetailView(product: prod, isProductPresented: $productSelected)
            }
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
