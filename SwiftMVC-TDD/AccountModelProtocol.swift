//
//  AccountModelProtocol.swift
//  SwiftMVC-TDD
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import Foundation

protocol AccountModelProtocol {
    
//  function will deposit or withdraw an amount and will
//  return the balance
    func transact(deposit : Double , withdraw :Double) -> Double
    
}
