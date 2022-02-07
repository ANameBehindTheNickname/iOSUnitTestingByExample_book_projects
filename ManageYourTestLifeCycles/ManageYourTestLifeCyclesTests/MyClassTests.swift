//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageYourTestLifeCycles

class MyClassTests: XCTestCase {
    func test_methodOne() {
        let sut = MyClass()
        sut.methodOne()
        
        XCTFail("Fail methodOne")
    }
    
    func test_methodTwo() {
        let sut = MyClass()
        sut.methodTwo()
    }
}
