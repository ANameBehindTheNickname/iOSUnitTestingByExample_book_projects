//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageDifficultDependencies

private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        .init()
    }
}


class OverrideViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
