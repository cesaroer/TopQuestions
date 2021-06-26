//
//  Formatting.swift
//  TopQuestionsUIKit
//
//  Created by Jesus Cruz on 25/06/21.
//
import Foundation
import SwiftUI

extension Int {
    var thousandsFormatting: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let number = self > 1000
            ? NSNumber(value: Float(self) / 1000)
            : NSNumber(value: self)
        return formatter.string(from: number)!
    }
}

extension Date {
    var formatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
}

extension Color {
    static var teal: Color {
        Color(UIColor.systemTeal)
    }
}
