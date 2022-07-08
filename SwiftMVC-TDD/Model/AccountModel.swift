//
//  AccountModel.swift
//  SwiftMVC-TDD
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import Foundation

class AccountModel:AccountModelProtocol {
    
    var balance:Double = 0
    
    func transact(deposit: Double, withdraw: Double) -> Double {
        balance += deposit
        balance -= withdraw
        return balance
    }
    
}
