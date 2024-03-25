//
//  Color+Extension.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import Foundation
import SwiftUI

extension Color {
    static func random() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}
