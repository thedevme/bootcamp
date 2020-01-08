//
//  Transaction.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/7/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

class Transaction: Identifiable, Equatable {
    var id = UUID()
    let type: String
    let desc: String
    let amount: String
    let from: String

    init(type: String, desc: String, amount: String, from: String) {
        self.type = type
        self.desc = desc
        self.amount = amount
        self.from = from
    }

    static func == (lhs: Transaction, rhs: Transaction) -> Bool {
        return lhs.id == rhs.id
    }
}
