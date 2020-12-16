//
//  Style.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/02.
//

import SwiftUI

struct PatternStyleConfig: Identifiable {
    var color = Color.white.opacity(0.5)
    var angle = Angle.degrees(45)
    var width = CGFloat(5)
    var spacing = CGFloat(5)
    var id = UUID()
}

// .stripe(background: .yellow, foreground: color)
// .dot(background: .purple, foreground: color, radius: 15)
// .check(background: color, foreground: Color.white.opacity(0.5))

//
// fill(with style: .stripe(style:), background: .white, borderWidth: CGFloat = 0)

protocol Fillable {
    associatedtype T: View
    
    func draw() -> T
}

struct Style {
    static func stripe(style: PatternStyleConfig = PatternStyleConfig()) -> some Fillable {
        StripeStyle(style: style)
    }
    
    static func dot(style: PatternStyleConfig = PatternStyleConfig()) -> some Fillable {
        DotStyle(style: style)
    }
    
    static func check(styles: [PatternStyleConfig] = [PatternStyleConfig(angle: Angle.degrees(0)),
                                                PatternStyleConfig(angle: Angle.degrees(90))]) -> some Fillable {
        CheckStyle(styles: styles)
    }
}

struct StripeStyle: Fillable {
    var style = PatternStyleConfig()
    
    init(style: PatternStyleConfig) {
        self.style = style
    }

    func draw() -> some View {
        Stripe(width: style.width, spacing: style.spacing)
            .foregroundColor(style.color)
    }
}

struct DotStyle: Fillable {
    var style = PatternStyleConfig()
    
    init(style: PatternStyleConfig) {
        self.style = style
    }
    
    func draw() -> some View {
        Dot(width: style.width, spacing: style.spacing)
            .foregroundColor(style.color)
    }
}

struct CheckStyle: Fillable {
    
    var styles = [
        PatternStyleConfig(angle: Angle.degrees(0)),
        PatternStyleConfig(angle: Angle.degrees(90)),
    ]
    
    init(styles: [PatternStyleConfig]) {
        self.styles = styles
    }
    
    func draw() -> some View {
        ZStack {
            ForEach(styles) { style in
                Stripe(width: style.width, spacing: style.spacing)
                    .foregroundColor(style.color)
                    .rotationEffect(style.angle)
            }
        }
    }
}
