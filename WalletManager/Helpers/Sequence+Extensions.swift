//
//  Sequence+Extensions.swift
//  WalletManager
//
//  Created by Alisa Serhiienko on 05.02.2024.
//

import Foundation

extension Sequence {
    func sum<T: AdditiveArithmetic>(_ predicate: (Element) -> T) -> T {
        reduce(.zero) { $0 + predicate($1) }
    }
}
