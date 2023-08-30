//
//  ShoppingCartCell.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/29/23.
//

import SwiftUI

struct ShoppingCartCell: View {
    var body: some View {
        HStack{
            Image("buzzCola")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .cornerRadius(15)
            Text("Buzz Cola")
            Text("3 @ $1.99")
            Spacer()
            Text("$5.97")
        }
    }
}

struct ShoppingCartCell_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartCell()
    }
}
