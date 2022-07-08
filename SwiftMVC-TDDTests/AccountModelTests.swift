//
//  AccountModelTests.swift
//  SwiftMVC-TDDTests
//
//  Created by Pablo De La Cruz on 7/8/22.
//

import XCTest
@testable import SwiftMVC_TDD

class AccountModelTest: XCTestCase {
    
    var model: AccountModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        model = AccountModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTransact() {
        let result = model?.transact(deposit: 10, withdraw: 4)
        XCTAssertEqual(6, result)
    }

}
