//
//  File.swift
//  
//
//  Created by Kim, Min Ho on 2020/12/16.
//

import SwiftUI

@available(iOS 13.0, *)
struct SimpleStripe: PatternStyle {
    var configs = [PatternConfig]()
    
    init(config: PatternConfig) {
        self.configs.append(config)
    }

    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.init(config: PatternConfig(color: color, width: width, spacing: spacing))
    }

    var body: some View {
        Group {
            if !configs.isEmpty {
                Stripe(width: configs.first!.width, spacing: configs.first!.spacing)
                    .foregroundColor(configs.first!.color)
            }
        }
    }
}

@available(iOS 13.0, *)
struct SimpleDot: PatternStyle {
    var configs = [PatternConfig]()
    
    init(config: PatternConfig) {
        self.configs.append(config)
    }

    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.init(config: PatternConfig(color: color, width: width, spacing: spacing))
    }

    var body: some View {
        Group {
            if !configs.isEmpty {
                Dot(width: configs.first!.width, spacing: configs.first!.spacing)
                    .foregroundColor(configs.first!.color)
            }
        }
    }
}

@available(iOS 13.0, *)
struct SimpleCheck: PatternStyle {
    var configs = [PatternConfig]()

    init(configs: [PatternConfig]) {
        self.configs = configs
    }

    init(first: PatternConfig, second: PatternConfig) {
        self.init(configs: [first, second])
    }

    init(color: Color, width: CGFloat, spacing: CGFloat) {
        self.init(first: PatternConfig(color: color, width: width, spacing: spacing),
                  second: PatternConfig(color: color, width: width, spacing: spacing))
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
