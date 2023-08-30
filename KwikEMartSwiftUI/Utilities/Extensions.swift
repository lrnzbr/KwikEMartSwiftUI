//
//  Extensions.swift
//  KwikEMartSwiftUI
//
//  Created by Lorenzo Brown on 8/30/23.
//

import Foundation

extension Double {
    func formatAsDollar()-> String {
        return "$\(String(format: "%.2f", self))"
    }
}
