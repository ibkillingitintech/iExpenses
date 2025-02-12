//
//  iExpenseSwiftUIApp.swift
//  iExpenseSwiftUI
//

//
import SwiftData
import SwiftUI

@main
struct iExpenseSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
