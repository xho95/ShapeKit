//
//  Pattern.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

/// A type to fill a shape
public protocol PatternStyle: View {
    @available(iOS 13.0, *)
    var configs: [PatternConfig] { get set }
}

@available(iOS 13.0, *)
/// A configuration for a pattern style
public struct PatternConfig: Identifiable {
    var color = Color.clear
    var width = CGFloat.zero
    var spacing = CGFloat.zero
    public var id = UUID()
}

