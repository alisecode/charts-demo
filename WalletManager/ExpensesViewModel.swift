//
//  ExpensesViewModel.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024
//

import SwiftUI

class ExpensesViewModel: ObservableObject {
    @Published var selectedProductIndex = 0
    
    var pickerOptions = [
    ExpensePicker(name: "Income", tag: 0),
    ExpensePicker(name: "Expense", tag: 1)
    ]
    
    private let expenseData = [
    InOutCome(name: "Income", data: [
        .init(month: "January", money: 6443),
        .init(month: "February", money: 5743),
        .init(month: "March", money: 7143),
        .init(month: "April", money: 9143),
    ]),
    
    
    InOutCome(name: "Expense", data: [
        .init(month: "January", money: 3343),
        .init(month: "February", money: 4443),
        .init(month: "March", money: 2343),
        .init(month: "April", money: 3553),
    ])
    
    ]
    
    var product: InOutCome {
        return expenseData[selectedProductIndex]
    }
    
    var expenseRange = 0...10000
}

