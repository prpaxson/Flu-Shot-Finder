//
//  Beginning.swift
//  Flu Shot Finder
//
//  Created by Ata Tafazoli Yazdi on 10/6/18.
//  Copyright © 2018 Patrick Paxson. All rights reserved.
//

import UIKit

class Beginning: UIViewController {
    
    @IBAction func startButt(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoS", sender: self)
    }
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

}

