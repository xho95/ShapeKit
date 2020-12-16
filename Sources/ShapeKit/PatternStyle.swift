//
//  PatternStyle.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

struct PatternStyle {
    static func stripe(color: Color = Color.white,
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        StripePattern(color: color, width: width, spacing: spacing)
    }

    static func dot(color: Color = Color.white,
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        DotPattern(color: color, width: width, spacing: spacing)
    }

    static func check(color: Color = Color.white.opacity(0.5),
                       width: CGFloat = 5.0,
                       spacing: CGFloat = 5.0) -> some Pattern {
        CheckPattern(color: color, width: width, spacing: spacing)
    }

    static func check(first: PatternConfig,
                      second: PatternConfig) -> some Pattern {
        CheckPattern(first: first, second: second)
    }
}

struct StripePattern: Pattern {
    var configs = [PatternConfig](repeating: PatternConfig(), count: 1)
    
    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.configs[0] = PatternConfig(color: color, width: width, spacing: spacing)
    }
    
    init(config: PatternConfig) {
        self.configs[0] = config
    }

    var body: some View {
        ZStack {
            ForEach(configs) { config in
                Stripe(width: config.width, spacing: config.spacing)
                    .foregroundColor(config.color)
            }
        }
    }
}

struct DotPattern: Pattern {
    var configs = [PatternConfig](repeating: PatternConfig(), count: 1)
    
    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.configs[0] = PatternConfig(color: color, width: width, spacing: spacing)
    }
    
    init(config: PatternConfig) {
        self.configs[0] = config
    }

    var body: some View {
        ZStack {
            ForEach(configs) { config in
                Dot(width: config.width, spacing: config.spacing)
                    .foregroundColor(config.color)
            }
        }
    }
}

struct CheckPattern: Pattern {
    var configs = [PatternConfig](repeating: PatternConfig(), count: 2)
    
    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.configs[0] = PatternConfig(color: color, width: width, spacing: spacing)
        self.configs[1] = PatternConfig(color: color, width: width, spacing: spacing)
    }
    
    init(first: PatternConfig, second: PatternConfig) {
        self.configs[0] = first
        self.configs[1] = second
    }

    init(configs: [PatternConfig]) {
        self.configs = configs
    }

    var body: some View {
        ZStack {
            ForEach(0..<configs.count) { index in
                Stripe(width: configs[index].width, spacing: configs[index].spacing)
                    .foregroundColor(configs[index].color)
                    .rotationEffect(Angle.degrees(Double(90 * index)))
            }
        }
    }
}
