//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageDifficultDependencies

class ClosureInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { .init() }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
