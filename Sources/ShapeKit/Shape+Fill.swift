//
//  Fillable.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

@available(iOS 13.0, *)
extension Shape {
    public func fill<P>(with pattern: P,
                 angle: Angle = Angle.zero,
                 background: Color = Color.yellow) -> some View where P: Pattern {
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
