//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import TestingUserDefaults

class ViewControllerTests: XCTestCase {

    func test_viewDidLoad_withEmptyDatabase_shows0InCounterLabel() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: "ViewController")
        sut.database = FakeDatabase()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counterLabel.text, "0")
    }
}
