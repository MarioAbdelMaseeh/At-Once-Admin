//
//  Numbers.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import Foundation

//Helper: Format numbers with commas
extension Int {
    func formattedWithSeparator() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
}
