//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import TestingNetworkRequests

class ViewControllerTests: XCTestCase {

    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: "ViewController")
        let spyNetwork = SpyNetwork()
        sut.network = spyNetwork
        sut.loadViewIfNeeded()
        
        sut.button.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(spyNetwork.dataTaskCallCount, 1, "call count")
        XCTAssertEqual(spyNetwork.dataTaskRequests.first, URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20of%20boneville")!))
    }
}
