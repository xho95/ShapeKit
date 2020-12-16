//
//  Pattern.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

public protocol Pattern: View {
    @available(iOS 13.0, *)
    var configs: [PatternConfig] { get set }
}

@available(iOS 13.0, *)
public struct PatternConfig: Identifiable {
    var color = Color.clear
    var width = CGFloat.zero
    var spacing = CGFloat.zero
    public var id = UUID()
}

