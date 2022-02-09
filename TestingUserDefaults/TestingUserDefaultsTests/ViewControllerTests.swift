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
    
    func test_tappingButton_with12InDatabase_writes13ToDatabase() {
        database.integers = ["count": 12]
        sut.loadViewIfNeeded()
        
        tap(sut.incrementButton)
        
        XCTAssertEqual(database.integers["count"], 13)
    }
    
    func test_tappingButton_with42InDatabase_shows43InCounterLabel() {
        database.integers = ["count": 42]
        sut.loadViewIfNeeded()
        
        tap(sut.incrementButton)
        
        XCTAssertEqual(sut.counterLabel.text, "43")
    }
    
    // MARK: - Helpers
    
    private func tap(_ button: UIButton) {
        button.sendActions(for: .touchUpInside)
    }
}
