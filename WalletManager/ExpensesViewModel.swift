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
    ExpensePicker(name: "Outcome", tag: 1)
    ]
    
    private let expenseData = [
    InOutCome(name: "Income", data: [
        .init(month: "Jan", money: 5443),
        .init(month: "Feb", money: 5243),
        .init(month: "Mar", money: 7143),
        .init(month: "Apr", money: 9143),
    ]),
    
    
    InOutCome(name: "Outcome", data: [
        .init(month: "Jan", money: 4343),
        .init(month: "Feb", money: 7443),
        .init(month: "Mar", money: 2343),
        .init(month: "Apr", money: 4553),
    ])
    
    ]
    
    var product: InOutCome {
        return expenseData[selectedProductIndex]
    }
    
    var expenseRange = 0...10000
}

