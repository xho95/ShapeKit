//
//  Dot.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

struct Dot: Shape {
    var width = CGFloat(5)
    var spacing = CGFloat(5)

    func path(in rect: CGRect) -> Path {
        let length = sqrt(pow(rect.width, 2) + pow(rect.height, 2))
        let offset = CGPoint(x: (length - rect.width) / 2, y: (length - rect.height) / 2)
        let itemWidth = width + spacing
        let items = Int(length / itemWidth)

        var path = Path()
        for i in 0...items {
            for j in 0...items {
                let x = CGFloat(j) * itemWidth - offset.x
                let y = CGFloat(i) * itemWidth - offset.y
                
                path.move(to: CGPoint(x: x, y: y))
                path.addEllipse(in: CGRect(x: x, y: y, width: width, height: width))
            }
        }
        return path
    }
}

struct Dot_Previews: PreviewProvider {
    static var previews: some View {
        Dot()
    }
}
