//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import AppKit

class CoveredClass {
    private(set) var area: Int
    
    var width: Int {
        didSet {
            area = width * width
            let color: NSColor = redOrGreen(for: width)
            drawSquare(width: width, color: color)
        }
    }
    
    init() {
        area = 0
        width = 0
    }
    
    private func redOrGreen(for width: Int) -> NSColor {
        width.isMultiple(of: 2) ? .red : .green
    }
    
    private func drawSquare(width: Int, color: NSColor) {
        // ...
    }
    
    static func max(_ x: Int, _ y: Int) -> Int {
        if x < y {
            return y
        } else {
            return x
        }
    }
    
    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        for i in from..<to {
            result += "\(i),"
        }
        
        result += "\(to)"
        return result
    }
}
