//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            UserDefaults.standard.set(count, forKey: "count")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = UserDefaults.standard.integer(forKey: "count")
    }

    @IBAction private func incrementButtonTapped() {
        count += 1
    }
}

