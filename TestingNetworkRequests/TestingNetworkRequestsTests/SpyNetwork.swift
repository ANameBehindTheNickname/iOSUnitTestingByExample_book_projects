//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation
@testable import TestingNetworkRequests

class SpyNetwork: Network {
    var dataTaskCallCount = 0
    var dataTaskRequests = [URLRequest]()
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTaskRequests.append(request)
        return .init()
    }
}
