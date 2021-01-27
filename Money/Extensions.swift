//
//  Extensions.swift
//  Money
//
//  Created by Daniel Alvarez on Jan/26/21.
//

import Foundation

extension Double {
    
    var format: String {
        String(format: "%.2f", self)
    }
    
    var numberOfDigits: Int {
        if self >= 100000 {
            return 5
        }
        if self >= 10000 {
            return 4
        }
        if self >= 1000 {
            return 3
        }
        if self >= 100 {
            return 3
        }
        if self >= 10 {
            return 2
        }
        return 1
    }
    
    func ten(_ multiplier: Int = 1) -> Int {
        return multiplier * Int(pow(Double(10), Double(self.numberOfDigits - 1)))
    }
}
