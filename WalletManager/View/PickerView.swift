//
//  PickerView.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import SwiftUI

struct PickerView: View {
    var options: [ExpensePicker]
    var selection: Binding<Int>
    
    
    var body: some View {
        Picker("Product", selection: selection) {
            ForEach(options, id: \.name) { option in
                Text(option.name).tag(option.tag)
            }
        }
        .pickerStyle(.segmented)
    }
}

