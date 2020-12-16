//
//  Stripe.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

struct Stripe: Shape {
    var width = CGFloat(5)
    var spacing = CGFloat(5)

    func path(in rect: CGRect) -> Path {
        let length = sqrt(pow(rect.width, 2) + pow(rect.height, 2))
        let offset = CGPoint(x: (length - rect.width) / 2, y: (length - rect.height) / 2)
        let itemWidth = width + spacing
        let items = Int(length / itemWidth)

        var path = Path()
        for item in 0...items {
            let left = CGFloat(item) * itemWidth - offset.x
            let right = left + width
            let top = 0 - offset.y
            let bottom = length - offset.y
            
            path.move(to: CGPoint(x: left, y: top))
            path.addLine(to: CGPoint(x: left, y: bottom))
            path.addLine(to: CGPoint(x: right, y: bottom))
            path.addLine(to: CGPoint(x: right, y: top))
        }
        return path
    }
}

struct Stripe_Previews: PreviewProvider {
    static var previews: some View {
        Stripe()
    }
}
