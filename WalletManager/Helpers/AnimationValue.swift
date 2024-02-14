//
//  AnimationValue.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import SwiftUI

struct AnimationValue: View, Animatable {
    var value: Double
    
    var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var animatableData: Double {
        get { value }
        set {
            value = newValue
        }
    }
    
    var body: some View {
        Text("$\(formatter.string(for: value) ?? "" )")
    }
}

