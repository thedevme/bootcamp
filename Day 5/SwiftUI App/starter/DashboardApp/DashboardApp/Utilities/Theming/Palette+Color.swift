//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseYellow = Color("Yellow")
    static let baseDarkGray = Color("DarkGray")
}

extension UIColor {
    static let baseYellow = Color(named: "Yellow")
    static let baseDarkGray = Color(named: "DarkGray")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

