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
        let mockNetwork = MockNetwork()
        sut.network = mockNetwork
        sut.loadViewIfNeeded()
        
        sut.button.sendActions(for: .touchUpInside)
        
        mockNetwork.verifyNetwork(with: URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20of%20boneville")!))
    }
}
