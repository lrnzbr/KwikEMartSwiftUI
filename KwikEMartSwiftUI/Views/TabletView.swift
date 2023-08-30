//
//  TabletView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/8/23.
//

import SwiftUI

struct TabletView: View {
    var body: some View {
        HStack {
            ProductListView()
            ShoppingCartView()
        }
    }
}

struct TabletView_Previews: PreviewProvider {
    static var previews: some View {
        TabletView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
            .previewDisplayName("iPad Pro")
    }
}
