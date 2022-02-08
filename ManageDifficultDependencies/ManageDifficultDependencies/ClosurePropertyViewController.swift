//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class ClosurePropertyViewController: UIViewController {
    
    var makeAnalyics = { Analytics.shared }

    override func viewDidAppear(_ animated: Bool) { super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        makeAnalyics().track(event: "viewDidAppear - \(type(of: self))")
    }

}
