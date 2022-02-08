//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageDifficultDependencies

class ClosurePropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: "ClosurePropertyViewController")
        sut.makeAnalyics = { .init() }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
