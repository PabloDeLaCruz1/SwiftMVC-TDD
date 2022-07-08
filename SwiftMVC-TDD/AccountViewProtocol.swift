//
//  AccountViewProtocol.swift
//  SwiftMVC-TDD
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import Foundation


import Foundation

protocol AccountViewProtocol {
    
    func getWithdrawalValue() -> String
    
    func getDepositValue() -> String
    
    func setBalanceValue( balanceAmount :String )
    
    func setController(controller:ViewController)
    
}
