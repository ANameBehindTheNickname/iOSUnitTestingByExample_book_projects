//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private(set) var button: UIButton!
    private var dataTask: URLSessionDataTask?
    
    var network: Network = URLSession.shared
    
    @IBAction private func buttonTapped() {
        searchForBook(terms: "out from boneville")
    }
    
    private func searchForBook(terms: String) {
        guard let encodedTerms = terms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "https://itunes.apple.com/search?" +
                            "media=ebook&term=\(encodedTerms)") else { return }
        
        let request = URLRequest(url: url)
        dataTask = network.dataTask(with: request) { data, response, error in
            let decoded = String(data: data ?? Data(), encoding: .utf8)
            print("response: \(String(describing: response))")
            print("data: \(String(describing: decoded))")
            print("error: \(String(describing: error))")
            
            DispatchQueue.main.async {
                self.dataTask = nil
                self.button.isEnabled = true
            }
        }
        
        button.isEnabled = false
        dataTask?.resume()
    }
}

