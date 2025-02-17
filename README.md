# 💰 iExpenseSwiftUI  

A **SwiftData-powered expense tracker** that helps you categorize, filter, and manage personal & business expenses efficiently. 📊  


<img src="https://github.com/user-attachments/assets/9518a83d-f79e-4947-9b08-34fb54d46058" alt="Alt Text" width="250" height="500">

## 📖 About the Project  
**iExpenseSwiftUI** is a beautifully designed **SwiftUI app** that allows users to track **personal and business expenses** effortlessly.  
With **SwiftData integration**, the app enables **sorting, filtering, and persisting expense records** in a seamless way.  

✨ **Features:**  
✅ **Add new expenses** with name, type, and amount  
✅ **Filter by category** (Personal / Business)  
✅ **Sort expenses** by name or amount  
✅ **Delete expenses** with a swipe  
✅ **Dynamic color coding** for different expense amounts  
✅ **Data persistence using SwiftData**  

---

## 📸 Screenshots  
| Home Screen | Add Expense | Sorted & Filtered List |  
|------------|------------|----------------------|  
| <img src="https://github.com/user-attachments/assets/dd9f3e78-0323-4f4f-ab30-9c3c5e3ab7a7" alt="Home Screen" width="250" height="500"> | <img src="https://github.com/user-attachments/assets/46c3e17e-5f74-4d6c-a5a9-ba84bc397ffe" alt="Add Expenses" width="250" height="500"> | <img src="https://github.com/user-attachments/assets/4faeffe5-7f1d-4515-9aab-4d40cab332c7" alt="Filtered list" width="250" height="500"> |  

---

## 🚀 Features  
### 🎯 **Expense Tracking**  
- Add expenses under **Personal** or **Business** categories.  
- View expenses in a **scrollable list** with sorting & filtering options.  
- Amounts are **color-coded** for better visibility:  
  - 🟢 **Green**: $10 or below  
  - 🟡 **Yellow**: $10 – $100  
  - 🔴 **Red**: Above $100  

### 🔍 **Sorting & Filtering**  
- **Filter by category**: View **All**, **Personal**, or **Business** expenses.  
- **Sort by name or amount** to organize expenses easily.  

### 💾 **SwiftData-Powered Persistence**  
- All expenses are **automatically saved** and persist between app sessions.  
- Uses **SwiftData (not CoreData!)** for modern data storage.  

---

## 📂 Project Structure  
📁 **iExpenseSwiftUI/**  
├── 📄 `ExpenseItem.swift` – Defines **ExpenseItem** model using SwiftData  
├── 📄 `AddView.swift` – Form to **add new expenses**  
├── 📄 `ContentView.swift` – Displays & manages **expenses list**  
├── 📄 `SwiftData Integration` – Enables **data persistence**  
└── 📄 `Filter & Sort Logic` – Handles **sorting & filtering expenses**  

---

## 🎮 How to Use  

1️⃣ **Launch the app** – View expenses categorized under **Personal & Business**.  
2️⃣ **Tap '+' to add a new expense** – Enter details & save.  
3️⃣ **Sort or filter expenses** – Use segmented controls to refine the view.  
4️⃣ **Swipe to delete** – Remove unnecessary expenses.  

---

## 🛠 Installation & Setup  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/YourUsername/iExpenseSwiftUI.git
cd iExpenseSwiftUI
