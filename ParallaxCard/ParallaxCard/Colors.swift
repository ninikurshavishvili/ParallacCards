//
//  Colors.swift
//  ParallaxCard
//
//  Created by Nino Kurshavishvili on 11.03.25.
//

import SwiftUI

extension Color {
    static let customBackgroundColor = Color(hex: 0x282033)
    static let customContainerColor = Color(hex: 0x2C2C2C)
    static let customTextfieldColor = Color(hex: 0x3a3a3c)
    static let customPlaceHolderColor = Color(hex: 0x6f6f6f)
    
    init(hex: UInt32, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
}
