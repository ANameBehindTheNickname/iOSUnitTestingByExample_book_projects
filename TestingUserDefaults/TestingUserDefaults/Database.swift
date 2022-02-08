//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation

protocol Database {
    func set(_ value: Int, forKey defaultName: String)
    func integer(forKey defaultName: String) -> Int
}

extension UserDefaults: Database {}
