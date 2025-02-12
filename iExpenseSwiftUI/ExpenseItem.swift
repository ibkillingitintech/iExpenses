//
//  ExpenseItem.swift
//  iExpenseSwiftUI
//

import SwiftData
import Foundation

@Model
class ExpenseItem {
    var id = UUID()  // Remove `.primaryKey`
    var name: String
    var type: String
    var amount: Double

    init(name: String, type: String, amount: Double) {
        self.name = name
        self.type = type
        self.amount = amount
    }
}

