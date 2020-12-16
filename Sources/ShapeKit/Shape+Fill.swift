//
//  Fillable.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

extension Shape {
    func fill(with pattern: PatternKind, borderWidth: CGFloat = 0) -> some View {
        ZStack {
            self.fill(pattern.background)
            pattern.draw()
                .rotationEffect(pattern.angle)
                .clipShape(self)
                .contentShape(self)
            self.stroke(lineWidth: borderWidth)
        }
    }
    
    func fill<T>(with pattern: T,
                 angle: Angle = Angle.degrees(45),
                 background: Color = Color.yellow) -> some View where T: Fillable {
        ZStack {
            self.fill(background)
            pattern.draw()
                .rotationEffect(angle)
                .clipShape(self)
                .contentShape(self)
        }
    }
    
    func fill<P>(with pattern: P,
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
