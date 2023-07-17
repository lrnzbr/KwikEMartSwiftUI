//
//  ContentView.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sprinkle Donut")
                .padding()
            Image("donut")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
                .cornerRadius(16)
            Text("$2.99")
            Text("Homer's favorite donut")
                .padding()
            
        }
        .shadow(radius: 50)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.black, lineWidth: 5)
        )
        .cornerRadius(12)

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
