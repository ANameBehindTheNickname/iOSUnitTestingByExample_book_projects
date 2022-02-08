//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import TestingUserDefaults

class ViewControllerTests: XCTestCase {
    private var sut: ViewController!
    private var database: FakeDatabase!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "ViewController")
        database = .init()
        sut.database = database
    }
    
    override func tearDown() {
        sut = nil
        database = nil
        super.tearDown()
    }

    func test_viewDidLoad_withEmptyDatabase_shows0InCounterLabel() {
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counterLabel.text, "0")
    }
    
    func test_viewDidLoad_with7InDatabase_shows7InCounterLabel() {
        database.integers = ["count": 7]
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counterLabel.text, "7")
    }
}
