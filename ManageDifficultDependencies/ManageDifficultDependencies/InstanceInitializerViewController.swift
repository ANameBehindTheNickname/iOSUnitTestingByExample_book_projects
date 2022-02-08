//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class InstanceInitializerViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
}
