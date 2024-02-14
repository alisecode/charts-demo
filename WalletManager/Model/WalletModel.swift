//
//  WalletModel.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import Foundation

struct WalletModel: Identifiable {
    let month: String
    let money: Double
    var id: String { month }
}
