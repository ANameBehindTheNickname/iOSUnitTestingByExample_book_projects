//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation
@testable import TestingUserDefaults

class FakeDatabase: Database {
    var integers = [String: Int]()
    
    func set(_ value: Int, forKey defaultName: String) {
        integers[defaultName] = value
    }
    
    func integer(forKey defaultName: String) -> Int {
        integers[defaultName] ?? 0
    }
}
