//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        if self !== MySingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
