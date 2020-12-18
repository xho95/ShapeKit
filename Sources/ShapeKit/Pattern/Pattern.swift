//
//  Pattern.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

/// A structure that returns a PatternStyle with the static functions
public struct Pattern {
    /// Returns a PatternStyle that consiste a simple stripe pattern
    /// - Parameters:
    ///   - color: The color of the stripes
    ///   - width: The width of the stripes
    ///   - spacing: The space between the stripes
    /// - Returns: A PatternStyle
    @available(iOS 13.0, *)
    public static func stripe(color: Color = Color.white,
                              width: CGFloat = 5.0,
                              spacing: CGFloat = 5.0) -> some PatternStyle {
        SimpleStripe(color: color, width: width, spacing: spacing)
    }

    /// Returns a PatternStyle that consiste a simple dot pattern
    /// - Parameters:
    ///   - color: The color of the dots
    ///   - diameter: The diameter of the dots
    ///   - spacing: The space between the dots
    /// - Returns: A PatternStyle
    @available(iOS 13.0, *)
    public static func dot(color: Color = Color.white,
                           diameter: CGFloat = 5.0,
                           spacing: CGFloat = 5.0) -> some PatternStyle {
        SimpleDot(color: color, width: diameter, spacing: spacing)
    }
    
    /// Returns a PatternStyle that consists a check pattern with two configurations
    /// - Parameters:
    ///   - first: The configuration of the one part of the check pattern
    ///   - second: The configuration of the other part of the check pattern
    /// - Returns: A PatternStyle
    @available(iOS 13.0, *)
    public static func check(first: PatternConfig,
                             second: PatternConfig) -> some PatternStyle {
        SimpleCheck(first: first, second: second)
    }
    
    /// Returns a PatternStyle that consists a check pattern with a raw data
    /// - Parameters:
    ///   - color: The color of the check pattern
    ///   - width: The width of the check pattern
    ///   - spacing: The space between stripes of the check pattern
    /// - Returns: A PatternStyle
    @available(iOS 13.0, *)
    public static func check(color: Color = Color.white.opacity(0.5),
                             width: CGFloat = 5.0,
                             spacing: CGFloat = 5.0) -> some PatternStyle {
        SimpleCheck(color: color, width: width, spacing: spacing)
    }
    
    /// Returns a PatternStyle that consists a check pattern with two color information
    /// - Parameters:
    ///   - color1: The first color of the check pattern
    ///   - color2: The second color of the check pattern
    ///   - width: The width of the check pattern
    ///   - spacing: The space between stripes of the check pattern
    /// - Returns: A PatternStyle
    @available(iOS 13.0, *)
    public static func check(color1: Color = Color.white.opacity(0.5),
                             color2: Color = Color.white.opacity(0.5),
                             width: CGFloat = 5.0,
                             spacing: CGFloat = 5.0) -> some PatternStyle {
        SimpleCheck(first: PatternConfig(color: color1, width: width, spacing: spacing),
                    second: PatternConfig(color: color2, width: width, spacing: spacing))
    }
}
