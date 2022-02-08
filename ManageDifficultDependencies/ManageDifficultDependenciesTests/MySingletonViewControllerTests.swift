//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageDifficultDependencies

class MySingletonViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = .init()
    }
    
    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }

    func test_viewDidLoad() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
