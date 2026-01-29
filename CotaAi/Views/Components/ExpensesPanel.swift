//
//  ExpensesPanel.swift
//  CotaAi
//
//  Created by Anne Auzier on 29/01/26.
//

import SwiftUI

enum Expense: String {
    case youOwe, youreowed

    var description: String {
        switch self {
        case .youOwe:
            return "You owe"
        case .youreowed:
            return "You're owed"
        }
    }
}

struct ExpensesPanel: View {
    var expense: Expense
    var value: Double

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(.systemGray6))
                .frame(maxWidth: 150, maxHeight: 100)
            VStack(alignment: .leading, spacing: 20) {
                Text("\(expense.description)")
                Text("R$\(value)")
            }
        }
    }
}

#Preview {
    ExpensesPanel(expense: .youOwe, value: 100)
}
