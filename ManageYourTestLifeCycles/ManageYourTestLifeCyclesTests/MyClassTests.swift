//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageYourTestLifeCycles

class MyClassTests: XCTestCase {
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = .init()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        sut.methodOne()
        // assert something
    }
    
    func test_methodTwo() {
        sut.methodTwo()
        // assert something
    }
}
