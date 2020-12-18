//
//  Fillable.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

@available(iOS 13.0, *)
extension Shape {
    /// Fills this shape with a graphcial pattern
    /// - Parameters:
    ///   - pattern: The pattern to use when filling this shape.
    ///   - angle: The angle option that determines how the fill renders.
    ///   - background: The color option that determines what the background color is
    /// - Returns: A shaped view filled with the patternyou supply.
    public func fill<P>(with pattern: P,
                 angle: Angle = Angle.zero,
                 background: Color = Color.yellow) -> some View where P: PatternStyle {
        ZStack {
            self
                .fill(background)
            pattern
                .rotationEffect(angle)
                .clipShape(self)
                .contentShape(self)
        }
    }
}
