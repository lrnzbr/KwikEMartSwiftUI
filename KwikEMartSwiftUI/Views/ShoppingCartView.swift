//
//  ShoppingCartView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/8/23.
//

import SwiftUI

struct ShoppingCartView: View {
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    private func delete(at offsets: IndexSet){
        let items = Array(shoppingCartViewModel.shoppingCart.keys)
        let index = Int(offsets.first!.description)
        shoppingCartViewModel.removeFromCart(productID: items[index!])
    }
    var body: some View {
        VStack(alignment: .leading){
            VStack {
                Text("Shopping Cart")
                    .font(AppFont.title1.bold())
                    .padding()
                
                List {
                    ForEach(Array(shoppingCartViewModel.shoppingCart.keys), id: \.self){ key in
                        ShoppingCartCell(product: shoppingCartViewModel.catalog[key]!)
                    }.onDelete(perform: delete)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [3]))
                        .foregroundColor(.black)
                        .frame(height: 1)
                    HStack{
                        Text("Subtotal")
                            .font(AppFont.body)
                        Spacer()
                        Text(shoppingCartViewModel.subtotal.formatAsDollar())
                            .font(AppFont.body)
                    }
                    HStack {
                        Text("Taxes")
                            .font(AppFont.body)
                        Spacer()
                        Text((shoppingCartViewModel.subtotal * shoppingCartViewModel.taxRate).formatAsDollar())
                            .font(AppFont.body)
                    }
                    HStack {
                        Text("Total")
                            .font(AppFont.body)
                        Spacer()
                        Text((shoppingCartViewModel.subtotal * (1.0 + shoppingCartViewModel.taxRate)).formatAsDollar())
                            .font(AppFont.body)
                    }
                }
                HStack {
                Spacer()
                Button("Checkout"){}
                    .frame(width: 120, height: 45)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(25)
                    .padding()
                    .font(AppFont.body.bold())
                    .frame(alignment: .center)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
