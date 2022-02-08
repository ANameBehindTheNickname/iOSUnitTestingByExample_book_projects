//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the Analytics Singleton")
        }
    }
}
