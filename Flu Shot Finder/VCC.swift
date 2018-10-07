//
//  VCC.swift
//  Flu Shot Finder
//
//  Created by Robert Hernandez on 10/6/18.
//  Copyright © 2018 Robert Hernandez, . All rights reserved.
//

import UIKit

class VCC: UIViewController {
    
    @IBAction func completeShot(_ sender: Any) {
        self.performSegue(withIdentifier: "picTime", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

