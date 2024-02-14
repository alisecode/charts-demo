//
//  ExpenseSumView.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import SwiftUI

struct ExpenseSumView: View {
    var expense: String
    var sum: Double
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(expense)
                .font(.title2)
                .transaction { transaction in
                    transaction.animation = nil
                    
                }
            AnimationValue(value: sum)
                .font(.system(size: 28, weight: .semibold))
                .monospacedDigit()
            
        }
    }
}

