//
//  SwiftUIView.swift
//  WalletManager
//
//  Created by Алиса Третьякова on 05.02.2024.
//

import SwiftUI

struct AnimationValue: View, Animatable {
    var value: Double
    
    var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_CA")
        return formatter
    }()
    
    var animatableData: Double {
        get { value }
        set {
            value = newValue
        }
    }
    
    var body: some View {
        Text(formatter.string(for: value) ?? "" )
    }
}

