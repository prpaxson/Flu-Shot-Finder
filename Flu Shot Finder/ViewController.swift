//
//  ViewController.swift
//  Flu Shot Finder
//
//  Created by Patrick Paxson on 10/6/18.
//  Copyright © 2018 Patrick Paxson. All rights reserved.
//

import UIKit
import AWSMobileClient
import AWSAuthCore

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.text = "View Controller Loaded"
        
        // Get the AWSCredentialsProvider from the AWSMobileClient
        let credentialsProvider = AWSMobileClient.sharedInstance().getCredentialsProvider()
        
        // Get the identity Id from the AWSIdentityManager
        let identityId = AWSIdentityManager.default().identityId
    }

}

