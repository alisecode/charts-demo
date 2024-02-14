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
                        Text("\(item.money, format: .number.precision(.fractionLength(2)))")
                            .frame(minWidth: 80)
                            .font(.caption2)
                    }
                    .foregroundStyle(.blue.gradient)
            }
        }
        .chartYScale(domain: range)
    }
}

