//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    
    var userDefaults = UserDefaults.standard
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            userDefaults.set(count, forKey: "count")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = userDefaults.integer(forKey: "count")
    }

    @IBAction private func incrementButtonTapped() {
        count += 1
    }
}

