//
//  ViewControllerTest.swift
//  SwiftMVC-TDDTests
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import XCTest
@testable import SwiftMVC_TDD


class ViewControllerTest: XCTestCase {

    var controller: ViewController = ViewController()
    let mockView: MockView = MockView()
    
    override func setUp(){
        controller.setAccountView(mockView)
        controller.setAccountModel(AccountModel())
    }
    
    override func tearDown() {

    }
    
    func testProcessTransactionRequest(){
        controller.processTransactionRequest()
        XCTAssertEqual("$1.00", mockView.balance)
    }


}

//We want to test the ViewController in isolation without the need for the actual view. So we will mock a view and inject that value in our ViewVontrollerTest. We can mock the intended view by just implementing the AccountViewProtocol, and you can simply add that class at the end of the ViewControllerTest
class MockView: AccountViewProtocol {
    func setController(controller: ViewController) {
        
    }
    

    var balance: String?

    func getWithdrawalValue() -> String {
        return "10"
    }

    func getDepositValue() -> String {
        return "11"
    }

    func setBalanceValue(balanceAmount: String) {
        balance = balanceAmount
    }

}
