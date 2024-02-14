//
//  ExpenseBarChart.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import SwiftUI
import Charts

struct ExpenseBarChart: View {
    var data: [WalletModel]
    var range: ClosedRange<Int>
    
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark (x: .value("Expenses", item.month), y: .value("Expenses", item.money))
                    .annotation(position: AnnotationPosition.top) {
                        Text("\(item.money, format: .number)")
                            .frame(minWidth: 70)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .foregroundStyle(.purple.gradient)
            }
        }
        .chartYScale(domain: range)
    }
}

