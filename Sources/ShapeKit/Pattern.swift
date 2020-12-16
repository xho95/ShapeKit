//
//  Pattern.swift
//  Shape
//
//  Created by Kim, Min Ho on 2020/12/07.
//

import SwiftUI

protocol Pattern: View {
    var configs: [PatternConfig] { get set }
}

struct PatternConfig: Identifiable {
    var color = Color.clear
    var width = CGFloat.zero
    var spacing = CGFloat.zero
    var id = UUID()
}

