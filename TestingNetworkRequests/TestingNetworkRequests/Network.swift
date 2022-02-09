//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation

protocol Network {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: Network { }
