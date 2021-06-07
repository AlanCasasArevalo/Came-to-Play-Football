import SwiftUI

// Data


// Color
let colorBackground = Color("ColorBackground")
let grayColor = Color(UIColor.systemGray4)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


// UX


// Api


// Image
struct ImagesAndIconsConstant {
    static let logoLineal = "logo-lineal"
    static let logoDark = "logo-dark"    
}

// Font


// String
struct ConstantWords {
    static let footerText = "We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices."
    static let copyright = "Copiright © Alan Casas"
    
    static let logoViewTitleTouch = "Touch".uppercased()
    static let logoViewTitleDown = "Down".uppercased()
}


// Misc



