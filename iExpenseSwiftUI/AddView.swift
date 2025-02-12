import SwiftUI
import SwiftData

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var modelContext

    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0

    let types = ["Business", "Personal"]

    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)

                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }

                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let newExpense = ExpenseItem(name: name, type: type, amount: amount)
                    modelContext.insert(newExpense)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddView()
        .modelContainer(for: ExpenseItem.self) // Attach the model container for preview
}
