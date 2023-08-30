//
//  ShoppingCartView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/8/23.
//

import SwiftUI

struct ShoppingCartView: View {
    var body: some View {
        VStack{
            List {
                ShoppingCartCell()
                ShoppingCartCell()
                ShoppingCartCell()
            }
            Button("Checkout"){}
        }
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
