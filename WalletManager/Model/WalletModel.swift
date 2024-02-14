//
//  SalesModel.swift
//  WalletManager
//
//  Created by Алиса Третьякова on 05.02.2024.
//

import Foundation

struct WalletModel: Identifiable {
    let weekday: String
    let money: Double
    var id: String { weekday }
}
