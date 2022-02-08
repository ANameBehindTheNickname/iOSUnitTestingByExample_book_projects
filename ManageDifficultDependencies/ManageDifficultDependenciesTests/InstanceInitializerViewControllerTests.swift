//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import ManageDifficultDependencies

class InstanceInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: .init())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
