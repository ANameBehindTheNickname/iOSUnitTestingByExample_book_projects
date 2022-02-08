//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class OverrideViewController: UIViewController {

    func analytics() -> Analytics {
        Analytics.shared
    }
    
    override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        analytics().track(event: "viewDidAppear - \(type(of: self))")
    }
}
