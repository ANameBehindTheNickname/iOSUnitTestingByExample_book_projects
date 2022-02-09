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
        guard dataTaskWasCalledOnce(file: file, line: line) else { return }
        XCTAssertEqual(dataTaskRequests.first, request, "request", file: file, line: line)
    }
    
    private func dataTaskWasCalledOnce(file: StaticString = #file, line: UInt = #line) -> Bool {
        verifyMethodCalledOnce(
            methodName: "dataTask(with:completionHandler:)",
            callCount: dataTaskCallCount,
            describeArguments: "request: \(dataTaskRequests)",
            file: file,
            line: line
        )
    }
}

class DummyDataTask: URLSessionDataTask {
    override func resume() {
        
    }
}

func verifyMethodCalledOnce(
    methodName: String,
    callCount: Int,
    describeArguments: String,
    file: StaticString = #file,
    line: UInt = #line
) -> Bool {
    if callCount == 0 {
        XCTFail("Wanted, but not invoked: \(methodName)")
        return false
    } else if callCount > 1 {
        XCTFail("Wanted 1 time, but was called \(callCount) times. "
                + "\(methodName) with \(describeArguments)",
                file: file, line: line)
        return false
    }
    
    return true
}
