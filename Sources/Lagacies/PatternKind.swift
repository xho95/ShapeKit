//
//  PatternKind.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/01.
//

import SwiftUI

struct PatternKind {
    static let `default` = PatternKind()
    
    var kind = Kind.stripe
    var background = Color.orange
    var angle = Angle.degrees(45)

    var foreground = Color.white.opacity(0.5)
    var width = CGFloat(5)
    var spacing = CGFloat(5)
    
    enum Kind {
        case dot
        case stripe
        case check
    }

    func draw() -> some View {
        ZStack {
            switch kind {
            case .dot:
                Dot(width: width, spacing: spacing)
                    .foregroundColor(foreground)
            case .stripe:
                Stripe(width: width, spacing: spacing)
                    .foregroundColor(foreground)
            case .check:
                Stripe(width: width, spacing: spacing)
                    .foregroundColor(foreground)
                Stripe(width: width, spacing: spacing)
                    .foregroundColor(foreground)
                    .rotationEffect(.degrees(90))
            }
        }
    }
}


