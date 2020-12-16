//
//  File.swift
//  
//
//  Created by Kim, Min Ho on 2020/12/16.
//

import SwiftUI

@available(iOS 13.0, *)
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

@available(iOS 13.0, *)
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

@available(iOS 13.0, *)
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
