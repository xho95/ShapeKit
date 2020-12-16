//
//  PatternStyle.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

public struct PatternStyle {
    @available(iOS 13.0, *)
    static func stripe(color: Color = Color.white,
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        StripePattern(color: color, width: width, spacing: spacing)
    }

    @available(iOS 13.0, *)
    static func dot(color: Color = Color.white,
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        DotPattern(color: color, width: width, spacing: spacing)
    }

    @available(iOS 13.0, *)
    static func check(color: Color = Color.white.opacity(0.5),
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        CheckPattern(color: color, width: width, spacing: spacing)
    }

    @available(iOS 13.0, *)
    static func check(first: PatternConfig,
                      second: PatternConfig) -> some Pattern {
        CheckPattern(first: first, second: second)
    }
}
