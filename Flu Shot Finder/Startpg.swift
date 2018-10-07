//
//  VCC.swift
//  Flu Shot Finder
//
//  Created by Robert Hernandez on 10/6/18.
//  Copyright © 2018 Robert Hernandez, . All rights reserved.
//

import UIKit

class Startpg: UIViewController {
    
    @IBAction func toMap(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoMap", sender: self)
        
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

