//
//  HomeView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/8/23.
//

import SwiftUI

struct HomeView: View {
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom}
    
    var body: some View {
        if idiom == .pad {
            TabletView()
        } else {
            PhoneView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
        HomeView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
            .previewDisplayName("iPad Pro")
    }
}
