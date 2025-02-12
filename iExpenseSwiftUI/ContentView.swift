import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var showingAddExpense = false
    @State private var sortOrder: SortOrder = .name
    @State private var filterType: FilterType = .all

    enum SortOrder {
        case name, amount
    }

    enum FilterType: String, CaseIterable, Identifiable {
        case all = "All"
        case personal = "Personal"
        case business = "Business"
        
        var id: String { rawValue }
    }

    @Query(sort: [SortDescriptor<ExpenseItem>(\.name)]) private var expenses: [ExpenseItem]

    init() {}

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                // Title
                Text("iExpense")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading)
                
                // Filter and Sort Controls
                HStack {
                    Picker("Filter", selection: $filterType) {
                        ForEach(FilterType.allCases) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Sort by", selection: $sortOrder) {
                        Text("Name").tag(SortOrder.name)
                        Text("Amount").tag(SortOrder.amount)
                    }
                    .pickerStyle(.segmented)
                }
                .padding([.leading, .trailing, .top]) // Add padding to align it well with the title
                
                // Expense List
                List {
                    ForEach(filteredExpenses) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.type)
                            }
                            Spacer()
                            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .foregroundStyle(item.amount <= 10.00 ? Color.green :
                                                 item.amount <= 100.00 ? Color.yellow : Color.red)
                        }
                    }
                    .onDelete(perform: deleteExpense)
                }
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingAddExpense = true }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView()
            }
        }
    }

    // Computed property to handle sorting and filtering
    var filteredExpenses: [ExpenseItem] {
        var result = expenses

        // Apply filtering
        switch filterType {
        case .all:
            break
        case .personal:
            result = result.filter { $0.type == "Personal" }
        case .business:
            result = result.filter { $0.type == "Business" }
        }

        // Apply sorting
        switch sortOrder {
        case .name:
            result = result.sorted { $0.name < $1.name }
        case .amount:
            result = result.sorted { $0.amount < $1.amount }
        }

        return result
    }

    func deleteExpense(at offsets: IndexSet) {
        for offset in offsets {
            let expense = filteredExpenses[offset]
            modelContext.delete(expense)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ExpenseItem.self)
}
