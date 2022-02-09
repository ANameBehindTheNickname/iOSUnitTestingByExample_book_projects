//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import XCTest
@testable import TestingNetworkRequests

class MockNetwork: Network {
    var dataTaskCallCount = 0
    var dataTaskRequests = [URLRequest]()
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTaskRequests.append(request)
        return DummyDataTask()
    }
    
    func verifyNetwork(with request: URLRequest, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(dataTaskCallCount, 1, "call count", file: file, line: line)
        XCTAssertEqual(dataTaskRequests.first, request, "request", file: file, line: line)
    }
}

class DummyDataTask: URLSessionDataTask {
    override func resume() {
        
    }
}
