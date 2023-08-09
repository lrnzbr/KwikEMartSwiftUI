//
//  PhoneView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/8/23.
//

import SwiftUI

struct PhoneView: View {
    @State private var showingShoppingCart = false

    let heights =  stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0)
    }

    var body: some View {
        VStack{
            Image(systemName: "cart.fill").onTapGesture {
                showingShoppingCart.toggle()
            }
            ProductListView()
        }.sheet(isPresented: $showingShoppingCart) {
            ShoppingCartView()
                .presentationDetents(Set(heights))
        }
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
